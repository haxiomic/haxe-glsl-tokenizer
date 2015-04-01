/*
	GLSL Eval
	- For now, Eval supports only constant expressions

	@author George Corney

	#Notes
	- could we do away with GLSLAccesss and use GLSLVariable instead?
		Sure, but how do we deal with array access?
		Perhaps arrays are arrays of variables?
	- setValue, getValue should take not of constant:Bool
	- generally, Eval should be as error tolerant as possible, but warn as much as possible
	- stance on type checking?
		Yes, it should absolutely type check - in fact, it should auto cast where possible,
		but explicitly warn (or even throw if error sensitivity is high). This is become some
		implementations auto cast whereas other's do not

	#Todo
	- new operator approach with search?
	- complete primitive operators
	- better errors and warnings
	- should allow use of, but warn on reserved operations and symbols
	- .match(pattern) doesn't seem to be working?
	- built in types
	- handle complex construction:

		mat2 m2x2 = mat2(
		   1.1, 2.1, 
		   1.2, 2.2
		);
		mat3 m3x3 = mat3(m2x2); // = mat3(
		   // 1.1, 2.1, 0.0,   
		   // 1.2, 2.2, 0.0,
		   // 0.0, 0.0, 1.0)
		mat2 mm2x2 = mat2(m3x3); // = m2x2
	- basic type .len?
	- handle basic conversion in constructors, constructs seem to be completely type flexible!
	- Arrays: const should be stored as VariableDefinition which includes array behavior
	- Scoping
	- should support reserved operations but emit a warning
*/

package glslparser.eval;

import glslparser.AST;
import glslparser.eval.GLSLStructDefinition;

using AST.TypeEnumHelper;
using glslparser.eval.helpers.GLSLInstanceHelper;
using glslparser.eval.helpers.DataTypeHelper;

class Eval{
	static public var builtInVariables:Map<String, GLSLVariable> = [
		'gl_MaxVertexAttribs'             => createConst('gl_MaxVertexAttribs'             , 8),
		'gl_MaxVertexUniformVectors'      => createConst('gl_MaxVertexUniformVectors'      , 128),
		'gl_MaxVaryingVectors'            => createConst('gl_MaxVaryingVectors'            , 8),
		'gl_MaxVertexTextureImageUnits'   => createConst('gl_MaxVertexTextureImageUnits'   , 0),
		'gl_MaxCombinedTextureImageUnits' => createConst('gl_MaxCombinedTextureImageUnits' , 8),
		'gl_MaxTextureImageUnits'         => createConst('gl_MaxTextureImageUnits'         , 8),
		'gl_MaxFragmentUniformVectors'    => createConst('gl_MaxFragmentUniformVectors'    , 16),
		'gl_MaxDrawBuffers'               => createConst('gl_MaxDrawBuffers'               , 1)
	];
	static public var builtInTypes:Map<DataType, IGLSLTypeDefinition> = new Map<DataType, IGLSLTypeDefinition>();

	static public var userDefinedTypes:Map<DataType, GLSLStructDefinition> = new Map<DataType, GLSLStructDefinition>();
	static public var userDefinedVariables:Map<String, GLSLVariable> = new Map<String, GLSLVariable>();

	static public var warnings:Array<String> = new Array<String>();

	static public function reset(){
		userDefinedVariables = new Map<String, GLSLVariable>();
		userDefinedTypes = new Map<DataType, GLSLStructDefinition>();
		warnings = [];
	}

	static public function evaluateExpr(expr:Expression, constant:Bool = false):GLSLInstance{

		switch expr.toTypeEnum() {
			case LiteralNode(n): 
				return PrimitiveInstance(n.value, n.dataType);

			case ConstructorNode(n):
				var type = getType(n.dataType);

			 	if(type != null){
					var constructionParams:Array<GLSLInstance> = [];
					for(i in 0...n.parameters.length)
						constructionParams[i] = evaluateExpr(n.parameters[i], constant);
					return ComplexInstance(type.createInstance(constructionParams), n.dataType);
				}

			case IdentifierNode(n):
				var v:GLSLVariable = getVariable(n.name);

				if(v != null){
					if(constant && !v.qualifier.equals(TypeQualifier.CONST)){
						warn('using non-constant variable ${v.name} in constant expression'); 
					}

					return v.value;		
				}else{
					warn('no variable named \'${n.name}\' has been defined');
					return null;
				}

			case BinaryExpressionNode(n):
				var lInst = evaluateExpr(n.left, constant);
				var rInst = evaluateExpr(n.right, constant);
				var result = GLSLOperations.binaryFunctions.get(n.op)(lInst, rInst);
				if(result != null) return result;

			case UnaryExpressionNode(n):
				//evaluating the argument ensures it's a constant expression if required
				var argVar = resolveVariable(n.arg, constant);
				var argInst = argVar != null ? argVar.value : evaluateExpr(n.arg, constant);

				//INC_OP and DEC_OP require GLSLVariables
				var arg:Dynamic = switch n.op {
					case INC_OP, DEC_OP: argVar;
					default: argInst;
				}

				if(arg == null){
					warn('cannot perform unary expression on null');
					return null;
				}

				var result = GLSLOperations.unaryFunctions.get(n.op)(arg, n.isPrefix);
				if(result != null) return result;

			case SequenceExpressionNode(n):
				var currentExpression;
				for(e in n.expressions){
					currentExpression = evaluateExpr(e);
				}
				return currentExpression;

			case ConditionalExpressionNode(n):
				var testResult = evaluateExpr(n.test, constant);
				switch testResult {
					case PrimitiveInstance(v, BOOL):
						return v ? evaluateExpr(n.consequent, constant) : evaluateExpr(n.alternate, constant);
					case null, _:
						warn('conditional expression test must evaluate to boolean value');
						return null;
				}

			case AssignmentExpressionNode(n):
				var leftVar = resolveVariable(n.left, constant);
				if(leftVar.qualifier.equals(TypeQualifier.CONST)){
					warn('cannot assign value to constant variable ${leftVar.name}');
				}

				var value = evaluateExpr(n.right);
				
				var result = GLSLOperations.assignmentFunctions.get(n.op)(leftVar, value);
				if(result != null) return result;

			case FieldSelectionExpressionNode(n):
				var leftInst = evaluateExpr(n.left, constant);
				switch leftInst {
					case ComplexInstance(v, _):
						return v.accessField(n.field.name).value;
					case null, _:
						warn('field access cannot be performed on $leftInst');
						return null;
				}

			case ArrayElementSelectionExpressionNode(n): //#!
				warn('Eval doesn\'t yet support array element selection');

			case FunctionCallNode(n): //#!
				warn('Eval doesn\'t yet support function calls');
			case null, _:
		}

		warn('cannot resolve expression $expr');
		return null;
	}

	static public function evalulateStructSpecifier(specifier:StructSpecifier):GLSLStructDefinition{
		var userType = GLSLStructDefinition.fromStructSpecifier(specifier);
		userDefinedTypes.set(DataType.USER_TYPE(specifier.name), userType);
		return userType;
	}

	static public function evaluateVariableDeclaration(declaration:VariableDeclaration):Array<GLSLVariable>{
		var declared:Array<GLSLVariable> = [];

		//if TypeSpecifier is StructDefinition, evaluate it
		switch declaration.typeSpecifier.toTypeEnum() {
			case StructSpecifierNode(n): evalulateStructSpecifier(n);
			case null, _:
		}

		for(dr in declaration.declarators){
			//dr may potentially have no name (case of only a struct declaration)
			//in this case, skip it
			if(dr.name == null || dr.name == '') continue;

			var variable:GLSLVariable;

			//check for redeclaration
			if((variable = getVariable(dr.name)) != null){ //variable already exists
				if(declaration.typeSpecifier.invariant){ //if invariant qualifier is set, it's not a considered redeclaration
					variable.invariant = true;
					declared.push(variable);
					continue;
				}
				warn('redeclaration of variable \'${dr.name}\' not allowed');
				continue;
			}

			variable = {
				name: dr.name,
				dataType: declaration.typeSpecifier.dataType,
				qualifier: declaration.typeSpecifier.qualifier,
				precision: declaration.typeSpecifier.precision,
				invariant: declaration.typeSpecifier.invariant,
				value: null
			}

			var isConstant = declaration.typeSpecifier.qualifier.equals(TypeQualifier.CONST);

			//set value if there's an initializer
			if(dr.initializer != null){
				var value = evaluateExpr(dr.initializer, isConstant);
				//check data types match
				if(!value.getDataType().equals(variable.dataType)){
					warn('type mismatch between variable of type ${variable.dataType} and value of type ${value.getDataType()}');
				}
				variable.value = value;
			}else{
				if(isConstant) warn('variables with qualifier \'const\' must be initialized');
				//initialize to 0 state or false
				variable.value = variable.dataType.construct(null);
			}

			//add array size if necessary
			if(dr.arraySizeExpression != null){
				var arraySizePrimitive = evaluateExpr(dr.arraySizeExpression, true);
				switch arraySizePrimitive {
					case PrimitiveInstance(v, INT):
						variable.arraySize = v;
					case null, _:
						error('array size must an integer expression');
				}
			}

			userDefinedVariables.set(dr.name, variable);
			declared.push(variable);
		}

		return declared;
	}

	static function resolveVariable(expr:Expression, constant:Bool):GLSLVariable{
		var variable:GLSLVariable = null;

		switch expr.toTypeEnum(){
			case IdentifierNode(n): 
				variable = getVariable(n.name);

			case FieldSelectionExpressionNode(n):
				var leftInst = evaluateExpr(n.left, constant);
				switch leftInst {
					case ComplexInstance(v, _):
						variable = v.accessField(n.field.name);
					case null, _:
						warn('field access cannot be performed on $leftInst');
				}

			// case ArrayElementSelectionExpressionNode(n): //#!

			case null, _:
		}

		if(variable == null) return null;

		if(constant && !variable.qualifier.equals(TypeQualifier.CONST)){
			warn('using non-constant variable ${variable.name} in constant expression');
		}

		return variable;
	}

	static function getVariable(name:String){
		var v:GLSLVariable = userDefinedVariables.get(name);
		if(v == null) v = builtInVariables.get(name);
		return v;
	}

	static function getType(dataType:DataType){
		var type:IGLSLTypeDefinition = null;
		if(dataType.match(USER_TYPE(_))){
			type = userDefinedTypes.get(dataType);
		}else{
			type = builtInTypes.get(dataType);
		}
		return type;
	}

	static function createConst(name:String, value:Dynamic, ?precision:PrecisionQualifier):GLSLVariable{
		if(precision == null) precision = PrecisionQualifier.MEDIUM_PRECISION;
		var dataType:DataType = null;
		switch (Type.typeof(value)) {
			case Type.ValueType.TInt: dataType = INT;
			case Type.ValueType.TFloat: dataType = FLOAT;
			case Type.ValueType.TBool: dataType = BOOL;
			case null, _:
		}
		var inst:GLSLInstance = PrimitiveInstance(value, dataType);
		return {
			name: name,
			value: inst,
			dataType: dataType,
			qualifier: TypeQualifier.CONST,
			precision: precision,
			invariant: false
		}
	}

	//Error Reporting
	static function warn(msg){
		trace('Eval warning: $msg');//#!
		warnings.push('Eval warning: $msg');
	}

	static function error(msg){
		throw 'Eval error: $msg';
	}
}

enum GLSLInstance{
	PrimitiveInstance(v:Dynamic, t:DataType);
	ComplexInstance(v:IGLSLComplexInstance, t:DataType);
	// ArrayInstance, for future use
}

typedef GLSLVariableDefinition = {
	var name:String;
	var dataType:DataType;
	var qualifier:TypeQualifier;
	var precision:PrecisionQualifier;
	var invariant:Bool;
	@:optional var arraySize:Int;
};

typedef GLSLVariable = {
	> GLSLVariableDefinition,
	var value:GLSLInstance;
}
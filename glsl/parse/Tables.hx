/*
	#Parser Tables
	tables generated by lemon parser generator

	Generated from: GLES-100_v4

	Haxe port:
	@author George Corney
*/

package glsl.parse;

typedef TokenType = glsl.token.Tokenizer.TokenType;

class Tables{
	static public var ignoredTokens:Array<TokenType> = [WHITESPACE, LINE_COMMENT, BLOCK_COMMENT];

	static public inline var errorRecovery:Bool = false; //true when %syntax_error is used, this requires and ERROR token in the grammar

	//consts
	static public inline var illegalSymbolNumber:Int = 171;

	static public inline var nStates = 351; //total number of states
	static public inline var nRules = 219; //total number of rules

	//tables
/* ###### ACTION ###### */
	static public inline var actionCount:Int = 2601; //YY_ACTTAB_COUNT
	static public var action:Array<Int> = [180,348,347,346,22,45,44,43,42,374,55,54,280,339,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,315,314,313,312,349,344,178,85,179,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,52,51,50,209,73,258,257,256,93,236,235,234,232,264,263,258,257,256,96,2,211,131,28,130,67,124,122,121,14,120,194,180,348,347,346,22,343,241,240,239,32,55,54,280,336,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,315,314,313,312,349,344,113,85,20,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,117,208,9,209,73,49,48,38,93,236,235,234,232,264,263,258,257,256,96,2,212,131,226,130,67,124,122,121,14,120,194,180,348,347,346,22,187,208,9,47,46,55,54,280,37,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,315,314,313,312,349,344,100,85,35,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,36,231,233,209,73,72,56,34,93,236,235,234,232,264,263,258,257,256,96,1,230,131,24,130,67,124,122,121,14,120,194,180,348,347,346,22,41,40,33,21,375,55,54,280,291,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,315,314,313,312,140,376,349,344,19,85,25,342,341,112,177,23,282,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,246,209,73,32,72,56,93,236,235,234,232,264,263,258,257,256,96,2,283,131,377,130,67,124,122,121,14,120,194,180,348,347,346,22,95,250,350,378,379,55,54,280,29,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,315,314,313,312,380,349,344,381,85,382,342,341,112,177,23,282,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,383,384,209,73,385,386,32,93,236,235,234,232,264,263,258,257,256,96,228,387,131,147,130,67,124,122,121,14,120,194,349,344,99,85,388,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,287,144,223,148,98,68,260,141,64,136,389,135,145,225,62,286,13,227,165,262,290,289,63,345,220,262,390,259,221,133,32,32,190,222,219,218,217,216,215,5,262,97,349,344,99,85,284,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,281,59,223,148,98,68,260,141,64,136,340,135,58,225,62,115,251,227,31,262,245,27,247,32,220,75,26,32,221,132,244,233,210,222,219,218,217,216,215,349,344,99,85,65,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,86,229,223,148,98,68,260,141,64,136,253,135,197,225,62,68,260,227,214,262,18,213,80,224,220,127,17,8,221,262,78,201,190,222,219,218,217,216,215,3,349,344,99,85,7,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,199,198,223,148,98,68,260,141,64,136,195,135,16,225,62,116,15,227,66,262,189,186,207,12,220,1,204,143,221,125,252,202,210,222,219,218,217,216,215,349,344,99,85,10,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,76,4,223,148,98,68,260,141,64,136,57,135,74,225,62,68,260,227,69,262,30,572,572,70,220,572,572,572,221,262,61,249,190,222,219,218,217,216,215,6,349,344,99,85,572,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,572,572,223,148,98,68,260,141,64,136,572,135,572,225,62,68,260,227,572,262,572,572,243,94,220,572,242,572,79,262,203,205,572,572,219,218,217,216,215,349,344,99,85,572,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,572,572,223,148,98,68,260,141,64,136,572,135,572,225,62,68,260,227,572,262,572,572,238,94,220,572,237,572,79,262,200,205,572,572,219,218,217,216,215,349,344,99,85,572,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,572,572,223,148,98,68,260,141,64,136,572,135,572,225,62,572,572,227,572,262,572,572,572,572,220,572,572,572,221,572,572,572,210,222,219,218,217,216,215,349,344,99,85,572,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,572,572,223,148,98,68,260,141,64,136,572,135,572,225,62,572,572,227,572,262,572,572,572,572,220,572,572,572,81,572,572,451,572,572,219,218,217,216,215,349,344,99,85,572,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,572,572,223,148,98,68,260,141,64,136,572,135,572,225,62,572,572,227,572,262,114,208,9,572,191,572,241,240,239,137,236,235,234,232,192,188,180,348,347,346,22,572,11,572,572,572,55,54,280,572,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,315,314,313,312,349,344,92,85,572,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,572,572,572,209,73,572,572,572,93,236,235,234,232,264,263,258,257,256,96,180,348,347,346,22,572,572,572,572,572,55,54,280,572,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,315,314,313,312,180,348,347,346,22,572,572,572,572,572,55,54,338,572,334,333,332,331,330,329,328,327,326,325,324,323,322,321,320,319,315,314,313,312,572,137,236,235,234,232,264,263,258,257,256,96,572,349,344,129,85,572,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,572,572,572,572,572,68,260,572,572,572,572,128,572,225,62,349,344,572,85,262,342,341,112,177,23,572,176,335,308,53,89,111,110,84,103,175,174,172,170,166,572,193,572,123,119,303,302,301,300,299,298,297,296,295,294,293,572,572,349,344,129,85,572,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,572,68,260,572,572,68,260,351,572,70,572,128,572,225,62,262,60,249,572,262,280,572,279,278,277,276,275,274,273,272,271,270,269,268,267,266,265,261,572,572,572,126,572,280,572,279,278,277,276,275,274,273,272,271,270,269,268,267,266,265,261,241,240,239,137,236,235,234,232,572,572,572,572,73,572,572,572,93,236,235,234,232,264,263,258,257,256,96,572,572,572,572,572,572,572,572,73,572,572,194,93,236,235,234,232,264,263,258,257,256,96,572,572,572,572,68,260,572,572,572,572,572,194,70,180,348,347,346,22,262,572,254,572,572,55,54,572,572,334,333,332,331,330,329,328,327,326,325,324,323,322,321,320,319,315,314,313,312,572,183,77,98,68,260,141,64,136,572,135,572,225,62,572,572,227,572,262,572,572,572,572,572,572,572,572,572,572,572,196,572,180,348,347,346,22,182,572,572,572,572,55,54,185,184,334,333,332,331,330,329,328,327,326,325,324,323,322,321,320,319,315,314,313,312,349,344,572,85,572,342,341,112,177,23,282,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,107,206,572,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,88,349,344,118,85,572,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,349,344,90,85,572,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,349,344,91,85,572,342,341,112,177,23,305,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,87,349,344,572,85,572,342,341,112,177,23,288,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,349,344,572,85,572,342,341,112,177,23,292,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,349,344,572,85,572,342,341,112,177,23,304,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,349,344,572,85,572,342,341,112,177,23,572,176,335,318,53,572,349,344,572,85,572,342,341,112,177,23,307,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,84,103,175,174,172,170,168,101,285,572,146,572,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,84,103,175,174,172,170,168,101,285,572,142,572,572,572,572,572,572,572,572,572,572,572,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,84,103,175,174,172,170,168,101,285,572,139,572,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,84,103,175,174,172,170,168,101,285,572,138,572,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,84,103,175,174,172,170,168,101,285,572,134,572,572,572,572,572,572,572,572,349,344,572,85,572,342,341,112,177,23,337,176,335,71,53,89,111,110,84,103,175,174,172,170,168,101,306,280,572,279,278,277,276,275,274,273,272,271,270,269,268,267,266,265,261,280,572,279,278,277,276,275,274,273,272,271,270,269,268,267,266,265,261,280,572,279,278,277,276,275,274,273,272,271,270,269,268,267,266,265,261,572,572,572,572,572,572,572,572,264,263,258,257,256,96,572,255,572,572,572,572,572,572,572,572,572,572,264,263,258,257,256,96,572,248,572,572,572,572,572,572,572,572,572,572,264,263,258,257,256,96,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,84,103,175,174,172,167,572,280,572,279,278,277,276,275,274,273,272,271,270,269,268,267,266,265,261,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,84,103,175,174,169,572,572,572,572,572,572,572,572,572,572,572,572,572,572,572,572,572,572,572,572,572,264,263,572,572,572,96,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,84,103,175,171,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,84,103,173,571,39,572,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,84,102,572,572,572,572,572,572,572,572,183,77,98,68,260,141,64,136,572,135,572,225,62,572,572,227,572,262,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,106,182,572,572,572,572,572,572,181,184,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,83,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,110,82,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,105,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,111,104,572,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,109,572,572,572,349,344,572,85,572,342,341,112,177,23,572,176,335,308,53,89,108,349,344,572,85,572,342,341,112,177,23,572,176,335,317,53,349,344,572,85,572,342,341,112,177,23,572,176,335,316,53,349,344,572,85,572,342,341,112,177,23,572,176,335,311,53,572,349,344,572,85,572,342,341,112,177,23,572,176,335,310,53,349,344,572,85,572,342,341,112,177,23,572,176,335,309,53];

/* ###### LOOKAHEAD ###### */
	static public var lookahead:Array<Int> = [1,2,3,4,5,40,41,42,43,5,11,12,13,6,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,35,36,37,65,66,77,78,79,70,71,72,73,74,75,76,77,78,79,80,81,82,83,7,85,86,87,88,89,90,91,92,1,2,3,4,5,8,67,68,69,14,11,12,13,5,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,96,97,98,99,54,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,148,149,150,65,66,31,32,46,70,71,72,73,74,75,76,77,78,79,80,81,82,83,1,85,86,87,88,89,90,91,92,1,2,3,4,5,148,149,150,38,39,11,12,13,47,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,96,97,98,99,49,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,48,133,73,65,66,137,138,50,70,71,72,73,74,75,76,77,78,79,80,81,5,83,7,85,86,87,88,89,90,91,92,1,2,3,4,5,44,45,51,52,5,11,12,13,10,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,1,5,96,97,54,99,7,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,133,65,66,14,137,138,70,71,72,73,74,75,76,77,78,79,80,81,141,83,5,85,86,87,88,89,90,91,92,1,2,3,4,5,145,146,65,5,5,11,12,13,53,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,5,96,97,5,99,5,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,5,5,65,66,5,5,14,70,71,72,73,74,75,76,77,78,79,80,141,5,83,14,85,86,87,88,89,90,91,92,96,97,98,99,5,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,65,1,125,126,127,128,129,130,131,132,5,134,129,136,137,65,7,140,9,142,11,12,6,6,147,142,5,129,151,152,14,14,155,156,157,158,159,160,161,162,142,1,96,97,98,99,8,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,65,81,125,126,127,128,129,130,131,132,6,134,81,136,137,6,8,140,14,142,8,7,6,14,147,14,7,14,151,152,8,73,155,156,157,158,159,160,161,96,97,98,99,14,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,1,8,125,126,127,128,129,130,131,132,65,134,65,136,137,128,129,140,82,142,5,82,5,136,147,1,54,6,151,142,5,82,155,156,157,158,159,160,161,162,96,97,98,99,6,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,65,65,125,126,127,128,129,130,131,132,65,134,65,136,137,85,5,140,84,142,65,154,152,150,147,81,152,1,151,152,146,82,155,156,157,158,159,160,161,96,97,98,99,150,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,150,150,125,126,127,128,129,130,131,132,138,134,81,136,137,128,129,140,128,142,123,170,170,136,147,170,170,170,151,142,143,144,155,156,157,158,159,160,161,162,96,97,98,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,170,125,126,127,128,129,130,131,132,170,134,170,136,137,128,129,140,170,142,170,170,135,136,147,170,139,170,151,142,153,154,170,170,157,158,159,160,161,96,97,98,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,170,125,126,127,128,129,130,131,132,170,134,170,136,137,128,129,140,170,142,170,170,135,136,147,170,139,170,151,142,153,154,170,170,157,158,159,160,161,96,97,98,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,170,125,126,127,128,129,130,131,132,170,134,170,136,137,170,170,140,170,142,170,170,170,170,147,170,170,170,151,170,170,170,155,156,157,158,159,160,161,96,97,98,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,170,125,126,127,128,129,130,131,132,170,134,170,136,137,170,170,140,170,142,170,170,170,170,147,170,170,170,151,170,170,6,170,170,157,158,159,160,161,96,97,98,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,170,125,126,127,128,129,130,131,132,170,134,170,136,137,170,170,140,170,142,148,149,150,170,147,170,67,68,69,70,71,72,73,74,157,163,1,2,3,4,5,170,165,170,170,170,11,12,13,170,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,96,97,98,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,170,170,65,66,170,170,170,70,71,72,73,74,75,76,77,78,79,80,1,2,3,4,5,170,170,170,170,170,11,12,13,170,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,1,2,3,4,5,170,170,170,170,170,11,12,13,170,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,170,70,71,72,73,74,75,76,77,78,79,80,170,96,97,98,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,170,170,170,170,128,129,170,170,170,170,134,170,136,137,96,97,170,99,142,101,102,103,104,105,170,107,108,109,110,111,112,113,114,115,116,117,118,119,120,170,164,170,166,167,54,55,56,57,58,59,60,61,62,63,64,170,170,96,97,98,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,128,129,170,170,128,129,0,170,136,170,134,170,136,137,142,143,144,170,142,13,170,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,170,170,170,164,170,13,170,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,67,68,69,70,71,72,73,74,170,170,170,170,66,170,170,170,70,71,72,73,74,75,76,77,78,79,80,170,170,170,170,170,170,170,170,66,170,170,92,70,71,72,73,74,75,76,77,78,79,80,170,170,170,170,128,129,170,170,170,170,170,92,136,1,2,3,4,5,142,170,144,170,170,11,12,170,170,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,170,125,126,127,128,129,130,131,132,170,134,170,136,137,170,170,140,170,142,170,170,170,170,170,170,170,170,170,170,170,65,170,1,2,3,4,5,161,170,170,170,170,11,12,168,169,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,96,97,170,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,141,170,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,96,97,98,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,96,97,98,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,96,97,98,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,96,97,170,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,96,97,170,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,96,97,170,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,170,96,97,170,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,124,170,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,124,170,170,170,170,170,170,170,170,170,170,170,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,124,170,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,124,170,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,170,124,170,170,170,170,170,170,170,170,96,97,170,99,170,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,13,170,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,13,170,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,13,170,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,170,170,170,170,170,170,170,170,75,76,77,78,79,80,170,82,170,170,170,170,170,170,170,170,170,170,75,76,77,78,79,80,170,82,170,170,170,170,170,170,170,170,170,170,75,76,77,78,79,80,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,115,116,117,118,119,170,13,170,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,115,116,117,118,170,170,170,170,170,170,170,170,170,170,170,170,170,170,170,170,170,170,170,170,170,75,76,170,170,170,80,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,115,116,117,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,115,116,94,95,170,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,115,170,170,170,170,170,170,170,170,125,126,127,128,129,130,131,132,170,134,170,136,137,170,170,140,170,142,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,161,170,170,170,170,170,170,168,169,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,114,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,113,170,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,170,170,170,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,111,112,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,170,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110,96,97,170,99,170,101,102,103,104,105,170,107,108,109,110];

/* ###### SHIFT OFFSET ###### */
	static public inline var shiftUseDefault = -36;
	static public inline var shiftCount = 180;
	static public inline var shiftOffsetMin = -35;
	static public inline var shiftOffsetMax = 2213;
	static public var shiftOffset:Array<Int> = [1425,275,91,275,275,275,-1,183,183,367,1121,1201,1201,1584,1518,1584,1584,1584,1584,1584,1584,1584,1584,1235,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1402,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,1584,2120,2120,2120,2120,2102,2084,2120,686,1045,1389,686,686,2213,2213,715,1301,31,-11,638,715,633,310,-36,-36,-36,-36,-35,-35,-35,496,260,26,26,26,565,569,503,174,309,567,487,76,437,422,328,232,237,237,154,154,154,154,127,127,154,127,560,504,623,644,700,619,87,636,634,625,624,660,647,571,643,594,646,87,639,637,561,558,615,621,585,514,578,568,575,572,564,570,476,491,525,527,310,508,492,459,444,430,429,426,425,402,400,397,372,371,354,306,280,279,202,173,202,197,173,150,197,114,150,114,100,7,87,89,4];
	
/* ###### REDUCE OFFSET ###### */
	static public inline var reduceUseDefault = -63;
	static public inline var reduceCount = 81;
	static public inline var reduceMin = -62;
	static public inline var reduceMax = 2490;
	static public var reduceOffset:Array<Int> = [2243,364,632,566,499,433,831,765,699,897,963,1187,1272,-62,1640,1613,1586,1523,1060,307,216,122,30,1974,1937,1907,1877,1837,1807,1780,1737,1710,1683,1229,2105,2148,2198,2220,2244,1429,2336,2317,2373,2355,2290,1550,2412,2392,1667,1570,2490,2475,2459,2444,2429,1764,775,709,1268,642,1382,1382,509,958,206,113,41,5,385,370,228,652,627,645,606,573,556,605,582,563,562,559];

/* ###### DEFAULT ACTION ###### */
	static public var defaultAction:Array<Int> = [570,569,570,569,570,569,570,570,570,570,570,553,570,570,570,570,554,570,570,570,570,570,570,369,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,570,568,462,462,568,568,570,570,570,399,462,570,568,570,570,568,568,569,568,569,416,415,414,391,473,405,404,403,570,570,570,570,466,570,570,469,570,570,570,429,418,417,413,412,411,410,408,407,409,406,570,570,544,570,570,570,555,570,570,570,570,570,570,570,570,570,570,545,570,570,570,570,570,472,452,570,570,570,456,570,570,516,570,570,570,570,570,505,501,500,499,498,497,496,495,494,493,492,491,490,489,488,487,570,428,426,427,424,425,422,423,420,421,419,570,570,364,570,352,561,565,564,563,562,566,543,542,548,538,551,550,552,567,560,558,559,557,556,549,533,532,547,523,522,546,521,520,540,539,537,536,535,534,531,530,529,528,527,526,525,524,519,478,477,476,468,475,474,455,454,483,482,481,480,479,461,459,465,464,463,460,458,467,457,453,450,510,511,514,517,515,513,512,509,508,507,506,485,484,505,504,503,502,501,500,499,498,497,496,495,494,493,492,491,490,489,488,487,486,449,518,471,470,446,448,541,445,363,362,361,371,443,442,441,440,439,438,437,436,435,434,433,432,444,431,430,399,402,401,400,398,397,396,395,394,393,392,390,389,388,387,386,385,384,383,382,381,380,379,378,377,376,375,373,372,370,368,367,366,365,360,359,358,357,356,355,354,353,447];

	//format: [Symbol on the left-hand side of the rule, Number of right-hand side symbols in the rule]
	static public var ruleInfo:Array<Array<Int>> = [[94,1],[96,1],[97,1],[97,1],[97,1],[97,1],[97,3],[99,1],[99,4],[99,1],[99,3],[99,2],[99,2],[100,1],[101,1],[102,2],[102,2],[104,2],[104,1],[103,2],[103,3],[105,2],[107,1],[107,1],[108,1],[108,1],[108,1],[108,1],[108,1],[108,1],[108,1],[108,1],[108,1],[108,1],[108,1],[108,1],[108,1],[108,1],[108,1],[108,1],[109,1],[109,2],[109,2],[109,2],[110,1],[110,1],[110,1],[110,1],[111,1],[111,3],[111,3],[111,3],[112,1],[112,3],[112,3],[113,1],[113,3],[113,3],[114,1],[114,3],[114,3],[114,3],[114,3],[115,1],[115,3],[115,3],[116,1],[116,3],[117,1],[117,3],[118,1],[118,3],[119,1],[119,3],[120,1],[120,3],[121,1],[121,3],[122,1],[122,5],[106,1],[106,3],[123,1],[123,1],[123,1],[123,1],[123,1],[123,1],[123,1],[123,1],[123,1],[123,1],[123,1],[98,1],[98,3],[124,1],[125,2],[125,2],[125,4],[126,2],[130,1],[130,1],[132,2],[132,3],[131,3],[135,2],[135,5],[133,3],[133,2],[133,3],[133,2],[138,0],[138,1],[138,1],[138,1],[139,1],[139,4],[127,1],[127,3],[127,6],[127,5],[140,1],[140,2],[140,5],[140,4],[140,2],[134,1],[134,2],[137,1],[137,1],[137,1],[137,2],[137,1],[136,1],[136,2],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[129,1],[128,1],[128,1],[128,1],[142,5],[142,4],[143,1],[143,2],[144,3],[145,1],[145,3],[146,1],[146,4],[141,1],[147,1],[148,1],[148,3],[153,1],[153,2],[155,1],[155,1],[151,1],[151,1],[151,1],[151,1],[151,1],[151,1],[149,2],[149,5],[154,3],[154,4],[156,2],[156,3],[162,1],[162,2],[157,1],[157,2],[158,5],[163,3],[163,1],[164,1],[164,4],[159,6],[159,7],[159,7],[165,1],[165,1],[167,1],[167,0],[166,2],[166,3],[160,2],[160,2],[160,2],[160,3],[160,2],[95,1],[95,2],[168,1],[168,1],[168,1],[169,3],[161,1],[150,0],[152,0]];

	static public var tokenIdMap:Map<TokenType, Int> = [IDENTIFIER=>1,IVEC2=>24,IVEC3=>25,IVEC4=>26,STRUCT=>80,INC_OP=>11,AMPERSAND=>46,WHILE=>85,COLON=>53,COMMA=>14,CONST=>71,MUL_ASSIGN=>55,SEMICOLON=>65,VERTICAL_BAR=>48,LEFT_ANGLE=>40,OR_ASSIGN=>64,SAMPLER2D=>75,DIV_ASSIGN=>56,LEFT_BRACKET=>7,XOR_OP=>50,FLOATCONSTANT=>3,VARYING=>73,LEFT_BRACE=>81,LE_OP=>42,EQUAL=>54,EQ_OP=>44,INVARIANT=>70,LEFT_PAREN=>5,XOR_ASSIGN=>63,LEFT_OP=>38,RIGHT_ANGLE=>41,LEFT_ASSIGN=>60,RIGHT_BRACKET=>8,ATTRIBUTE=>72,HIGH_PRECISION=>77,PERCENT=>37,ADD_ASSIGN=>58,PRECISION=>66,SLASH=>36,DO=>86,IF=>83,IN=>67,DOT=>9,FOR=>87,QUESTION=>52,INT=>16,OUT=>68,FLOAT=>15,CONTINUE=>88,RIGHT_BRACE=>82,INTCONSTANT=>2,MOD_ASSIGN=>57,TILDE=>34,SUB_ASSIGN=>59,GE_OP=>43,RIGHT_PAREN=>6,AND_OP=>49,TYPE_NAME=>30,NE_OP=>45,DEC_OP=>12,MEDIUM_PRECISION=>78,LOW_PRECISION=>79,RIGHT_ASSIGN=>61,BANG=>33,BOOL=>17,DASH=>32,BOOLCONSTANT=>4,ELSE=>84,FIELD_SELECTION=>10,DISCARD=>91,MAT2=>27,MAT3=>28,MAT4=>29,OR_OP=>51,PLUS=>31,UNIFORM=>74,BREAK=>89,AND_ASSIGN=>62,STAR=>35,VEC2=>18,VEC3=>19,VEC4=>20,VOID=>13,PREPROCESSOR_DIRECTIVE=>92,BVEC2=>21,BVEC3=>22,BVEC4=>23,RETURN=>90,INOUT=>69,RIGHT_OP=>39,CARET=>47,SAMPLERCUBE=>76];
}
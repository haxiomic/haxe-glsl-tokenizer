#!/bin/bash

DEMO_DIR=tests/parser/demo/
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#enter directory of the script
cd $DIR

# reset any changes
git reset --hard HEAD

# rebuild demo
git checkout master
cd $DEMO_DIR
make
cd $DIR

# # copy demo files to this branch
git checkout gh-pages
git checkout master tests/parser/demo/bin

mv tests/parser/demo/bin/* ./
#!/bin/sh

java -jar ~/bin/antlr4-formatter-standalone-1.2.2-SNAPSHOT.jar --dir="$1"
find "$1" -name '*.g4' -exec sed -i 's/[ \t]*$//' {} \;

#!/bin/sh

java -jar ~/bin/antlr4-formatter-standalone-1.2.2-SNAPSHOT.jar --input="$1"
find "$(dirname "$1")" -name "$(basename "$1")" -exec sed -i 's/[ \t]*$//' {} \;

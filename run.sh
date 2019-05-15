#!/bin/bash
set -e
if [ -z "$1" ]
  then
    echo "Usage: ./run.sh <name_of_file.caml>"
    exit 1
fi
f=$1
n=${f%.caml*}
cat $f | ./microc.native > "$n.ll"
llc -relocation-model=pic "$n.ll"
cc -o "$n" "$n.s" "stdlib.o" "-lm"
"./$n" > "input_file.txt"
"./betmidi"

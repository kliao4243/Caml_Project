#!/bin/bash
set -e
if [ -z "$1" ]
  then
    echo "Usage: ./run.sh <name_of_file.cl>"
    exit 1
fi
f=$1
n=${f%.cl*}
cat $f | ./caml.native > "$n.ll"
llc -relocation-model=pic "$n.ll"
cc -o $n.exe "$n.s" "src/stdlib.o" "-lm"
./$n.exe > $n
./midi_generator -o ./$n
rm $n.ll
rm $n.s
rm $n.exe

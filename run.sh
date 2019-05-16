#!/bin/bash
set -e
if [ -z "$1" ]
  then
    echo "Unrecognized usage "
    echo "For a list of sample usage: ./run.sh -h or ./run.sh -help"
    exit 1
fi
if [ "$1" = "-h" ]||[ "$1" = "-help" ]
    then
    echo "the caml run.sh accept three different usage"
    echo "./run.sh -s <input_file> or ./run.sh -song <input_file> "
    echo "convert the caml script into a midi file with <input_file>.midi"
    echo ""
    echo ""
    echo "./run.sh -p <input_file> or ./run.sh -print <input_file> "
    echo "print the output from compiling <input_file>"
    echo ""
    echo ""
    echo "./run.sh -o <input_file> or ./run.sh -txt <input_file> "
    echo "print the output from compiling into the text file <input_file>.txt"
    echo ""
    exit 1
fi
if [ "$1" = "-s" ]||[ "$1" = "-song" ]
    then
    f=$2
    n=${f%.cl*}
    cat $f | ./src/caml.native > "$n.ll"
    llc -relocation-model=pic "$n.ll"
    cc -o $n.exe "$n.s" "src/stdlib.o" "-lm"
    ./$n.exe > $n
    ./midifile/midi_generator -o ./$n
    rm $n
    rm $n.ll
    rm $n.s
    rm $n.exe
    exit 0
fi
if [ "$1" = "-p" ]||[ "$1" = "-print" ]
    then
    f=$2
    n=${f%.cl*}
    cat $f | ./src/caml.native > "$n.ll"
    llc -relocation-model=pic "$n.ll"
    cc -o $n.exe "$n.s" "src/stdlib.o" "-lm"
    ./$n.exe
    rm $n.ll
    rm $n.s
    rm $n.exe
    exit 0
fi
if [ "$1" = "-o" ]||[ "$1" = "-txt" ]
    then
    f=$2
    n=${f%.cl*}
    cat $f | ./src/caml.native > "$n.ll"
    llc -relocation-model=pic "$n.ll"
    cc -o $n.exe "$n.s" "src/stdlib.o" "-lm"
    ./$n.exe > ./$n.txt
    rm $n.ll
    rm $n.s
    rm $n.exe
    exit 0
fi

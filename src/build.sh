#!/bin/bash
cc -c stdlib.c

mv stdlib.o ../stdlib.o

make all

mv ../stdlib.o stdlib.o 

cd ../

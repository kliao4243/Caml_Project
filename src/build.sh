#!/bin/bash
mv stdlib.o ../stdlib.o

make all

mv ../stdlib.o stdlib.o 

cd ../
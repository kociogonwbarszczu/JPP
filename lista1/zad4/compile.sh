#!/bin/bash

gcc -c zad_4.c test.c
gnatmake ada_lib.adb
gnatbind -n ada_lib.ali
gnatlink ada_lib.ali zad_4.o test.o -o test
./test
#!/bin/bash

gcc -o c_lib.o -c c_lib.c
ar -rcs libc_lib.a c_lib.o
gnatmake zad_5.ads
gnatmake test.adb -largs -L. -l c_lib
./test
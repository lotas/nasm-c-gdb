#!/bin/sh

nasm -f macho64 num_calc.asm
gcc -Wall -o num_calc num_calc.c num_calc.o

./num_calc 20 3 10

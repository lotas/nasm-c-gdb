#!/bin/sh

nasm -f macho64 num_calc.asm
gcc -Wall -o num_calc num_calc.c num_calc.o
./num_calc 20 3 10

nasm -f macho64 num_calc_more.asm
gcc -Wall -o num_calc_more num_calc_more.c num_calc_more.o
./num_calc_more 1 2 3 4 5 6 7 8

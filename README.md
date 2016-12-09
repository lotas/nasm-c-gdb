# Basic NASM + C examples

Source code for the post ["Running NASM inside C inside GDB"](http://yaraslav.com/2016/12/07/nasm-c-gdb.html)

## 64bit Integer calculations

Example `num_calc.c` and `num_calc.asm` to do simple arithmetic on 64bit integers.
Run `./make.sh` to compile. Tested for macho64 (MacOS). To use other nasm formats see `nasm -hf`

## Passing more arguments

In example `num_calc_more.c` and `num_calc_more.asm` we can see how more arguments are being passed.
Run `./make.sh` to compile and run.
Run `./num_calc_more 1 2 3 4 5 6 7 8` to test.

---
Links:
* http://www.nasm.us/doc/nasmdoc9.html
* https://en.wikipedia.org/wiki/X86_calling_conventions

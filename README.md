# Basic NASM + C examples

Source code for the post ["Running NASM inside C inside GDB"](http://yaraslav.com/2016/12/08/nasm-c-gdb.html)

## 64bit Integer calculations

Example `num_calc.c` and `num_calc.asm` to do simple arithmetic on 64bit integers.
Run `./make.sh` to compile. Tested for macho64 (MacOS). To use other nasm formats see `nasm -hf`



---
Links:
* http://www.nasm.us/doc/nasmdoc9.html
* https://en.wikipedia.org/wiki/X86_calling_conventions

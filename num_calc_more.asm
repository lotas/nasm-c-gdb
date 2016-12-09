global _asm_compute_more

section .text

; n1 + n2 - n3 + n4 - n5 + n6 - n7 + n8

; rdi       ; 1st arg  n1
; rsi       ; 2nd arg  n2
; rdx       ; 3rd arg  n3
; rcx       ; 4th arg  n4
; r8        ; 5th arg  n5
; r9        ; 6th arg  n6
; [rbp+16]  ; 7th arg  n7
; [rbp+24]  ; 8th arg  n8
_asm_compute_more:
  push rbp
  mov rbp, rsp

  add rdi, rsi        ; rdi = n1 + n2
  sub rdi, rdx        ; rdi = n1 + n2 - n3
  add rdi, rcx        ; rdi = n1 + n2 - n3 + n4
  sub rdi, r8         ; rdi = n1 + n2 - n3 + n4 - n5
  add rdi, r9         ; rdi = n1 + n2 - n3 + n4 - n5 + n6
  sub rdi, [rbp+16]   ; rdi = n1 + n2 - n3 + n4 - n5 + n6 - n7
  add rdi, [rbp+24]   ; rdi = n1 + n2 - n3 + n4 - n5 + n6 - n7 + n8

  mov rax, rdi        ; copy return value to rax

  pop rbp
  ret

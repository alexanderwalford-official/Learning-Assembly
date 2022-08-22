; SumNumbers.asm
; Alexander Walford 2022

section .text
  global _start
  
_start:
  ; addition in register ebx
  add ebx, 3 ; set ebx to 3
  add ebx, 5 ; set ebx to 3 + 5

  ; subtraction in register rcx
  add rcx, 12 ; set rcx to 12
  sub rcx, 11 ; set rcx to 12 - 11
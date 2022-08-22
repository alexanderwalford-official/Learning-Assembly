; SumNumbers.asm
; Alexander Walford 2022

section .text
global _start
  
_start:
; addition in register ebx
ADD ebx, 3 ; set ebx to 3
ADD ebx, 5 ; set ebx to 3 + 5

; subtraction in register rcx
ADD rcx, 12 ; set rcx to 12
SUB rcx, 11 ; set rcx to 12 - 11
; MovingData.asm
; Alexander Walford 2022

section .text
global _start ; for gcc

_start:
; Task 1: Define 2 values, then sum them together into a single register
SET    rax, 2
SET    rcx, 8
ADD    rax, rcx

; Task 2: Move the value of the sum into a new register
MOV    rcx, rdx
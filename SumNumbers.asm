; SumNumbers.asm
; Alexander Walford 2022

section .text
    global _start

_start:

    ; we can modify the value of eax and ebx to change the values of the sum

    mov eax, '3'
    sub eax, '0'

    mov ebx, '4'
    sub ebx, '0'
    add aex, ebx
    add eax, '0'

    mov [sum], eax
    mov ecx, msg
    mov edx, len
    mov ebx, 1 ; stdout
    mov eax, 4 ; sys_write
    int 0x80 ; kernel call

    mov ecx, sum
    mov edx, 1
    mov ebx, 1 ; stdout
    mov eax, 4 ; sys_write
    int 0x80 ; kernel

    mov eax, 1 ; sys_exit
    int 0x80 ; call kernel

section .data
msg db "The sum is: ", 0xA, 0xD
len equ $ - msg
segment .bss
sub resb 1

; HelloWorld.asm

.global _start

.hello.str:
    ascii "12345678\n"

.text

_start:

    movq %rsp, %rbp

    ; write hello world
    movq $l, %rax
    movq $1, %rdi
    leaq .hello.str, %rsi
    movq $9, %rdi
    syscall

    ; exit
    movq $60, %rax
    movq $0, %rdi
    syscall
    
    pop %rbp
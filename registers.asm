; registers.asm
; Alexander Walford 2022

; I have created this file to help me memorise the
; registers which we use in modern x64 assembly language.



; x64 assembly code uses 16 64-bit registers. + the lower bytes of
; some of these registers may be accessed independantly as 32-, 16-
; or 8-bit registers

; key : B = byte/s
; 8 B : 0-3 B : 0-1 B : B 0
%rax    %eax    %ax    %al
%rcx    %ecx    %cv    %cl
%rdx    %edx    %dx    %dl   
%rbx    %ebx    %bx    %bl
%rsi    %esi    %si    %sil
%rdi    %edi    %di    %dil
%rsp    %esp    %sp    %spl
%rbp    %ebp    %bp    %bpl
%r8    %r8d    %r8w    %r8b
%r9    %r9d    %r9w    %r9b
%r10    %r10d    %r10w    %r10b
%r11    %r11d    %r11w    %r11b
%r12    %r12d    %r12w    %r12b
%r13    %r13d    %r13w    %r13b
%r14    %r14d    %r14w    %r14b
%r15    %r15d    %r15w    %r15b



; Data Movement

mov    ; Move source to destination (2 suffixes)
push    ; Push source onto stack (2 suffixes)
pop    ; Pop top of stack into destination (1 suffix)
cwtl    ; Convert word in %ax to doubleword value in %eax (sign-extended)
cltq    ; Convert doubleword in %eax to quadword in %rax (sign-extended)
cqto    ; Convert quadword in %rax to octoword in %rdx:%rax



; arithmatic operations
; unary operations
inc    ; ++
dec    ; --
neg    ; Negation
not    ; Bitwise complement



; binary operations
leaq    ; load effective address of source into desintation
add    ; add source to destination
sub    ; subtract source from destination
imul    ; multiply destination by source

; here we can relate these operations to standard logic gates
xor    ; bitwise XOR destination by source
or    ; bitwise OR destination by source
and    ; bitwise AND destination by source



; shift operations
sal / shl    ; left shift destination by k bits
sar    ; arithmetic right shift destination by k bits
shr    ; logical right shift destination by k bits



; special arithmatic operations
imulq S    ; Signed full multiply of %rax by S, result sored in %rdx:%rax
mulq S    ; Unsigned full multiply of %rax by S, result stored in %rdx:%rax
idivq S    ; Signed devide %rdx:rax by S, quotient stored in %rax. Remainder stored in %rdx
divq S    ; Unsigned devide %rdx:%rax by S, quotient stored in %rax. Remainder stored in %rdx



; comparision and test instructions

cmp A B    ; Set condition codes according to A - B
test A B    ; Set condition code according to A & B 



; accessing condition codes (no suffixes)
sete / setz    ; 
setne / setnz    ; 
sets    ; 
setns    ; 
setg / setnle    ; 
setge / setnl    ; 
setl / setnge    ; 
setle / setnge    ; 
seta / setnbe    ; 
setb / setnae    ; 
setbe / setna    ; 



; jump instructions
jmp    ; 
je / jz    ; 
jne / jnz    ; 
js    ; 
jns    ; 
jg / jnle    ; 
jge / jnl    ; 
jl / jnge    ; 
jle / jng    ; 
ja / jnbe    ; 
jae / jnb    ; 
jb / jnae    ; 
jbe / jna    ; 



; conditional move instructions
cmove / cmovz    ; 
cmovne / cmovzn    ; 

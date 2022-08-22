; proceedures.asm
; Alexander Walford 2022

section .text
  global _start

_start:
  ; let's start with calling our own custom proceedure
  call my_proceedure

  ; now let's talk about stacks, they are essentially array-like data structures
  ; in which data can be stored and removed from the top of the stack

  ; save AX and BX registrs in the stack
  push AX
  push BX

  ; use registers for other purpose:
  mov AX, x
  mov BX, y

  ; do whatever here, I'm just setting random values
  add x, 5
  add y, 15

  ; at the end of operations set the new values (overwrite):
  mov x, AX
  mov y, BX

  ; restore original values (go back in the stack)
  pop BX
  pop AX

my_proceedure:
  ; now do something, I've just set rbx to 8
  mov RBX, 8 
  ret ; return to _start
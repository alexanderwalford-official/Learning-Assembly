; recursion.asm
; Alexander Walford 2022

section .text
  global _start

_start:
  counter_a equ 0
  counter_b equ 0
  call repeat_proc

repeat_proc:
  inc counter_a
  jnz repeat_me_too counter_b ; jump if counter_b zero
  ret

repeat_me_too:
  inc counter_b
  repeat_proc
  ret
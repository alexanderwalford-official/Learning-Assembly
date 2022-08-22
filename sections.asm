; sections.asm
; Alexander Walford 2022

; sections - otherwise known as memory segments in the NASM documentation


; the data section
section .data
  ; here you would put your constants, does not change at runtime
  msg db 'my message', 0xa ; string variable
  len equ $ - msg ; length of the string

; you can also use the term 'segment' as compared to 'section'
segment .bss
  ; declare normal variables here
  I_X equ 66 ; custom variable 
  I_Y equ 44 ; custom variable 

section .text
  global _start
  ; defines where the program begins

_start:
  ; this is where the program starts
  I_X_Y equ I_X + I_Y ; sum custom variables

  ; perhaps we wish to redefine a variable
  %assign I_X 22 ; set new value to 22
  %assign I_Y 988 ; set new value to 988
  %assign I_X_Y equ I_X + I_Y ; sum custom variables again 
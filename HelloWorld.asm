section	.text
  global _start	 ; must be declared for linker (gcc)
	
_start:	         ; tell linker entry point
  mov	edx, len  ; message length
  mov	ecx, msg  ; message to write
  mov	ebx, 1    ; file descriptor (stdout)
  mov	eax, 4    ; system call number (sys_write)
  int	0x80     ; call kernel

  mov	eax, 1    ; system call number (sys_exit)
  int	0x80     ; call kernel
	
section	.data
  ; if we wanted to print a registry value, we would need to convert it to ASCII
  msg db 'Hello World',0xa ; a message
  len equ $ - msg  ; length of message
global _start 

section .data 

	buffer db 50 dup(0)
	buffer2 db 50 dup(0)
	ln db 0xA
	char db 1

section .text 

%include "../macro/print.asm"

_start: 

read:
	mov rax, 0 
	mov rdi, 0 
	mov rsi, char 
	mov rdx, 1 
	syscall 
	cmp byte [rsi], 'a'
	jl exit 
	cmp byte [rsi], 'z' 
	jg exit 
	mov rax, [rsi]
	sub rax, 96 
	PRINT rax


global _start 

section .data 

	char db 1

section .text 

_start: 

read:
	mov rax, 0 
	mov rdi, 0 
	mov rsi, char 
	mov rdx, 1 
	syscall 
	cmp byte [rsi], 'A'
	jl exit 
	cmp byte [rsi], 'Z' 
	jg exit 
	add byte [rsi], 32
write:
	mov rax, 1 
	mov rdi, 1 
	mov rsi, char 
	mov rdx, 1 
	syscall 
exit:
	mov rax, 60
	syscall 

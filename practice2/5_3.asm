global _start 

section .data 

	buffer db 27 dup(0)
	buffer2 db 27 dup(0)

section .text 

_start: 
	mov rax, 0 
	mov rdi, 0 
	mov rsi, buffer
	mov rdx, 27
	syscall 

	dec rax
	mov rcx, 0x7A 
	sub rcx, rax 
	mov rbx, 0 
for: 
	inc rcx
	mov [buffer2 + rbx], rcx
	inc rbx
	cmp rcx, 0x7A
	jl for 

	mov rax, 1 
	mov rdi, 1 
	mov rsi, buffer2
	mov rdx, rbx
	syscall	
exit: 
	mov rax, 60 
	syscall	

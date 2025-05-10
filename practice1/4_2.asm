section .data 

	format db "%d:%d:%d", 0xA, 0

section .text 
	global main
	extern printf

main: 
	mov rax, 86399
	mov rbx, 3600
	cqo 
   	idiv rbx 
        push rax	
	mov rax, rdx
	mov rbx, 60
	cqo 
	idiv rbx 
	push rax 
	push rdx
	lea rdi, [format]
	pop r10 
	pop rcx 
	pop rsi

	xor rax, rax
	call printf
	
	mov rax, 0 
	ret

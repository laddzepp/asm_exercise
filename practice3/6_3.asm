global _start

section .data 

	array dq 1,2,4,4,5
	;array dq 1,2,3,4,5
	;array dq 10,25,15,17
	;array dq 1

	array_len equ ($ - array)/8
	NO db "NO", 0xA 
	YES db "YES", 0xA

section .text 


_start: 
	mov rax, array_len 
	cmp rax, 1
	jz exit
	mov rdx, 0 
	mov rcx, 1 
for: 
	mov rax, [array + rdx * 8]
	mov rbx, [array + rcx * 8] 
	cmp rbx, rax
	jle no 
	inc rdx
	inc rcx
	cmp rcx, array_len-1
	jl for 
	jmp exit 
exit: 
	mov rax, 1 
	mov rdi, 1 
	lea rsi, YES 
	mov rdx, 4 
	syscall
	mov rax, 60 
	syscall
no: 
	mov rax, 1 
	mov rdi, 1 
	lea rsi, NO 
	mov rdx, 3 
	syscall
	mov rax, 60 
	syscall



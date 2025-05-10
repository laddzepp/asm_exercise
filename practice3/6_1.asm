global _start

section .data 
	mystr db 50 dup(0)
	buffer db 50 dup(0)
	buffer2 db 50 dup(0)
	ln db 0xA

section .text

%include "../macro/print.asm"

_start: 
	mov rax, 0 
	mov rdi, 0 
	mov rsi, mystr
	mov rdx, 50 
	syscall 

	dec rax

	mov rdi, rax	
	mov rcx, 0
	mov rdx, 0
	mov rax, mystr 
for: 	
	mov bl, [mystr + rcx]
	cmp bl, 'A'
	jl i
	cmp bl, 'Z'
	jg i
cnt: 
	inc rdx
i:
	inc rcx
	cmp rcx, rdi
	jl for 		
	mov rax, rdx
	PRINT rax
	
	
	


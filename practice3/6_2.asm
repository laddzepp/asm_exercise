global _start 

section .data 

	buffer db 50 dup(0)
	buffer2 db 50 dup(0)
	ln db 0xA

	array dd 5, 0
	array_len equ $ - array


section .text 


%include "../macro/print.asm"

_start:
	mov rcx, 0 
	mov al, 0
new_max: 
	mov al, bl
for: 
	mov bl, [array + rcx]
	cmp bl, al 
	jg new_max
	add rcx, 4
	cmp rcx, array_len
	jl for 
	PRINT rax


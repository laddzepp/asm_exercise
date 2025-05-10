global _start 


section .data
	buffer db 50 dup(50)
 	buffer2 db 50 dup(50)
	ln db 0xA

section .text 

%include "../macro/print.asm"

_start: 

    mov rax, 23
    imul rax, 3600      
    mov rbx, 59
    imul rbx, 60        
    add rax, rbx        
    add rax, 59
    xor rcx, rcx        
    PRINT rax


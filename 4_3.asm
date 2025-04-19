global _start


section .data 
	format db "RAX: %d RDX: %d", 0xA, 0 

section .text
	global main
	extern printf 

main:
    mov rax, 123
    ;mov rax, 100
    mov rbx, 10
    cmp rbx, 0 
    jz exit
    cqo
    idiv rbx  
    mov rcx, rdx 
    lea rdi, [format] 
    mov rsi, rax
    mov rdx, rcx
    xor rax, rax 
    call printf
exit: 
    mov rax, 0 
    ret 

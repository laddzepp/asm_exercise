global _start 

section .data 

        buffer db 50 dup(0)
        buffer2 db 50 dup(0)
        ln db 0xA

        array dq 1, 1933403, 3, 5
        array_len equ ($ - array)/8


section .text 


%include "../macro/print.asm"

_start:
        mov rcx, 0 
        xor rax, rax
        xor rbx, rbx
new_max: 
        mov rax, rbx
for: 
        mov rbx, [array + rcx * 8]
        cmp rbx, rax
        jg new_max
        inc rcx
        cmp rcx, array_len
        jl for 
        PRINT rax


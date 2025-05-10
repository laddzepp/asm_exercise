global _start

section .data
    buffer db 10 dup(0)       
    output db 55 dup(0)      
    alphabet db 'abcdefghijklmnopqrstuvwxyz'

section .bss
    n resb 8

section .text
_start:

    mov rax, 0
    mov rdi, 0
    mov rsi, buffer
    mov rdx, 10
    syscall

    xor rax, rax
    xor rbx, rbx
convert_loop:
    movzx rcx, byte [buffer + rbx]
    cmp rcx, 0xA
    je convert_done
    sub rcx, '0'
    imul rax, rax, 10
    add rax, rcx
    inc rbx
    jmp convert_loop
convert_done:
    mov [n], rax
    mov rcx, rax

    mov rsi, alphabet
    mov rdi, output
    mov rbx, 0
copy_first_n:
    cmp rbx, rcx
    jge copy_last_n
    mov al, byte [rsi + rbx]
    mov byte [rdi + rbx], al
    inc rbx
    jmp copy_first_n

copy_last_n:
    mov rsi, alphabet
    add rsi, 26
    sub rsi, rcx
    mov rdi, output
    add rdi, rcx
    mov rbx, 0
copy_last_n_loop:
    cmp rbx, rcx
    jge add_newline
    mov al, byte [rsi + rbx]
    mov byte [rdi + rbx], al
    inc rbx
    jmp copy_last_n_loop

add_newline:

    mov rdi, output
    add rdi, rcx
    add rdi, rcx
    mov byte [rdi], 0x0A

print_output:

    mov rax, 1
    mov rdi, 1
    mov rsi, output
    mov rdx, rcx
    shl rdx, 1
    inc rdx
    syscall

exit_program:
    mov rax, 60
    xor rdi, rdi
    syscall

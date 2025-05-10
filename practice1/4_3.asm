global _start

section .data
    input_format db "%d", 0      
    output_format db "RAX: %d RDX: %d", 0xA, 0 

section .bss
    input_number resq 1          

section .text
    global main
    extern printf
    extern scanf

main:
    push rbp                      
    mov rbp, rsp                  

    lea rdi, [input_format]       
    lea rsi, [input_number]       
    xor rax, rax                  
    call scanf                    

    mov rax, [input_number]

    mov rbx, 10                   
    cmp rbx, 0                    
    jz exit                       
    cqo                           
    idiv rbx                      
    mov rcx, rdx                 

    lea rdi, [output_format]  
    mov rsi, rax                  
    mov rdx, rcx                
    xor rax, rax                  
    call printf                  

exit:
    mov rsp, rbp                  
    pop rbp                       

    mov rax, 60                   
    xor rdi, rdi                 
    syscall

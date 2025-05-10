
%macro PRINT 1 

    mov rcx, 0 
to_char:
    mov rbx, 10
    xor rdx, rdx       
    div rbx           
    add dl, 0x30       
    mov [buffer + rcx], dl
    inc rcx             
    cmp rax, 0          
    jnz to_char

    dec rcx             
    xor rbx, rbx        
rev_str:
    mov sil, [buffer + rcx]   
    mov [buffer2 + rbx], sil  
    inc rbx                  
    dec rcx                  
    cmp rcx, -1               
    jnz rev_str 
write:
    mov rax, 1          
    mov rdi, 1         
    lea rsi, [buffer2]  
    mov rdx, rbx        
    syscall
newline: 
    mov rax, 1          
    mov rdi, 1         
    lea rsi, ln
    mov rdx, 1
    syscall
exit: 
    mov rax, 60 
    syscall
%endmacro


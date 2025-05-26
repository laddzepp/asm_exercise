
; THIS ALGORITHM BASED ON CODE FROM THIS REPO: https://github.com/Sakib2263/64-Bit-NASM-Assembly-Code-Examples/tree/master

segment .data

	a dq 2
	cnt dq 0
	fmt dq "%d ",10, 0
	fmt_in dq "%d", 0

segment .bss

	array resq 21

segment .text

	global main
	extern printf
	extern scanf

main:

push rbp

xor rax, rax
xor rcx, rcx
xor rbx, rbx

input_array:
	cmp rcx, 0xF
	jz done
	mov [cnt], rcx
	mov rax, 0
	mov rdi, fmt_in
	mov rsi, a
	call scanf
	mov rax, [a]
	mov rcx, [cnt]
	mov [array+rcx*8], rax
	add rbx, [a]
	inc rcx
	jmp input_array

done:
        xor rax, rax
	xor rcx, rcx
	xor rbx, rbx

outer_loop:
	cmp rcx, 0xF
	jge end_loop
	mov [cnt], rcx
	mov rax, [array+rcx*8]

inner_loop:
	inc rcx
	cmp rcx, 0xF
	jz ok
	cmp rax, [array+rcx*8]
	jle inner_loop
	xchg rax, [array+rcx*8]
	jmp inner_loop

ok:
	mov rcx, [cnt]
	mov [array+rcx*8], rax
	inc rcx
	jmp outer_loop

end_loop:
        xor rax, rax
        xor rbx, rbx
        xor rcx, rcx

	mov rdi, fmt
	mov rsi, [array+14*8]
	call printf

	xor rax, rax
	xor rbx, rbx
	xor rcx, rcx

	mov rdi, fmt
	mov rsi, [array + 13*8]
	call printf

end:
	mov rax, 0
	pop rbp
ret

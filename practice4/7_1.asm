section .data
	format db "%d",0xA
	;array dd 3,3,3,3,3,3,3,3,3,3,3,3,3,3,3
	array dd 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
	;array dd 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	res dd 50 dup(0)

section .text
	global main
	extern printf

main:
	mov rcx, 0
	mov rdx, 0
for:
	mov rax, [array + rcx * 4]
	mov rbx, rax
	and rax, 1
	cmp rax, 0
	jz is_even
is:
	mov [res + rdx * 4], rbx
	inc rdx
is_even:
	inc rcx
	cmp rcx, 0xF
	jl for
	cmp rdx, 0 
	jz exit

	push rdx
	xor rcx, rcx
	push rcx
print_array:
	mov rdi, format
	mov rsi, [res + rcx * 4]
	xor rax, rax
	call printf
	pop rcx
	inc rcx
	push rcx
	cmp rcx, [rsp+8]
	jl print_array
	pop rcx
	pop rcx
exit:
	mov rax, 0
	ret

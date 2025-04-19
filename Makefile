
4_1: 
	nasm -felf64 4_1.asm
	ld 4_1.o -o 4_1

4_2: 
	nasm -felf64 4_2.asm
	gcc -no-pie 4_2.o -o 4_2

4_3: 
	nasm -felf64 4_3.asm
	gcc -no-pie 4_3.o -o 4_3

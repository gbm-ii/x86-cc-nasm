	.file	"rev.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d: %s\n"
	.text
	.globl	main
	.type	main, @function
main:
	lea	ecx, [esp+4]
	and	esp, -16
	push	DWORD PTR [ecx-4]
	push	ebp
	mov	ebp, esp
	push	ebx
	push	ecx
	sub	esp, 16
	mov	ebx, ecx
	mov	DWORD PTR [ebp-12], 1
	jmp	.L2
.L3:
	mov	eax, DWORD PTR [ebp-12]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebx+4]
	add	eax, edx
	mov	eax, DWORD PTR [eax]
	sub	esp, 12
	push	eax
	call	mystrrev
	add	esp, 16
	sub	esp, 4
	push	eax
	push	DWORD PTR [ebp-12]
	push	OFFSET FLAT:.LC0
	call	printf
	add	esp, 16
	add	DWORD PTR [ebp-12], 1
.L2:
	mov	eax, DWORD PTR [ebp-12]
	cmp	eax, DWORD PTR [ebx]
	jl	.L3
	mov	eax, 0
	lea	esp, [ebp-8]
	pop	ecx
	pop	ebx
	pop	ebp
	lea	esp, [ecx-4]
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"main.c"
	.text
	.globl	A
	.section	.rodata
	.align 4
	.type	A, @object
	.size	A, 4
A:
	.long	10
	.globl	a
	.data
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.long	20
	.align 4
	.type	b, @object
	.size	b, 4
b:
	.long	30
	.globl	c
	.bss
	.align 4
	.type	c, @object
	.size	c, 4
c:
	.zero	4
	.section	.rodata
.LC0:
	.string	"hello world %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movabsq	$8031924123371070824, %rax
	movq	%rax, -36(%rbp)
	movl	$6581362, -28(%rbp)
	movl	$50, %ebx
	movl	%ebx, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.data
	.align 4
	.type	a.0, @object
	.size	a.0, 4
a.0:
	.long	40
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"sizeof demo_type=%u\n"
.LC1:
	.string	"values: s=%u,%u,%u,%u,%u,%u\n"
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
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movzbl	-8(%rbp), %eax
	orl	$1, %eax
	movb	%al, -8(%rbp)
	movzbl	-8(%rbp), %eax
	andl	$-15, %eax
	orl	$10, %eax
	movb	%al, -8(%rbp)
	movzwl	-8(%rbp), %eax
	andw	$-16369, %ax
	orw	$8208, %ax
	movw	%ax, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	$-507905, %eax
	orl	$278528, %eax
	movl	%eax, -8(%rbp)
	movzwl	-6(%rbp), %eax
	andw	$-8161, %ax
	orw	$4128, %ax
	movw	%ax, -6(%rbp)
	movb	$-127, -4(%rbp)
	movl	$8, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-4(%rbp), %eax
	movzbl	%al, %esi
	movzwl	-6(%rbp), %eax
	shrw	$5, %ax
	andb	$-1, %ah
	movzbl	%al, %r8d
	movl	-8(%rbp), %eax
	shrl	$14, %eax
	andl	$31, %eax
	movzbl	%al, %edi
	movzwl	-8(%rbp), %eax
	shrw	$4, %ax
	andw	$1023, %ax
	movzwl	%ax, %ecx
	movzbl	-8(%rbp), %eax
	shrb	%al
	andl	$7, %eax
	movzbl	%al, %edx
	movzbl	-8(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	subq	$8, %rsp
	pushq	%rsi
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits

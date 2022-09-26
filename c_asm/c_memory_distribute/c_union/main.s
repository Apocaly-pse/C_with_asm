	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"sizeof demo_type = %u\n"
.LC1:
	.string	"values: u=%u,%u,%u,%u,%u,%u\n"
	.align 8
.LC2:
	.string	"hex dump of u: %x %x %x %x %x %x %x %x\n"
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	movzbl	-16(%rbp), %eax
	orl	$1, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$-15, %eax
	orl	$10, %eax
	movb	%al, -16(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$-16369, %ax
	orw	$8208, %ax
	movw	%ax, -16(%rbp)
	movl	-16(%rbp), %eax
	andl	$-507905, %eax
	orl	$278528, %eax
	movl	%eax, -16(%rbp)
	movzwl	-14(%rbp), %eax
	andw	$-8161, %ax
	orw	$4128, %ax
	movw	%ax, -14(%rbp)
	movb	$-127, -12(%rbp)
	movl	$8, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-12(%rbp), %eax
	movzbl	%al, %esi
	movzwl	-14(%rbp), %eax
	shrw	$5, %ax
	andb	$-1, %ah
	movzbl	%al, %r8d
	movl	-16(%rbp), %eax
	shrl	$14, %eax
	andl	$31, %eax
	movzbl	%al, %edi
	movzwl	-16(%rbp), %eax
	shrw	$4, %ax
	andw	$1023, %ax
	movzwl	%ax, %ecx
	movzbl	-16(%rbp), %eax
	shrb	%al
	andl	$7, %eax
	movzbl	%al, %edx
	movzbl	-16(%rbp), %eax
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
	movzbl	-9(%rbp), %eax
	movzbl	%al, %r8d
	movzbl	-10(%rbp), %eax
	movzbl	%al, %edi
	movzbl	-11(%rbp), %eax
	movzbl	%al, %esi
	movzbl	-12(%rbp), %eax
	movzbl	%al, %r9d
	movzbl	-13(%rbp), %eax
	movzbl	%al, %r10d
	movzbl	-14(%rbp), %eax
	movzbl	%al, %ecx
	movzbl	-15(%rbp), %eax
	movzbl	%al, %edx
	movzbl	-16(%rbp), %eax
	movzbl	%al, %eax
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	movl	%r10d, %r8d
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$32, %rsp
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits

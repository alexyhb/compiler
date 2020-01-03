.section .data
print_int:
	.asciz	"%d\n"

.section .text
.global fact
.global gcd
.global lntwo
FINT:	.string "%d\n"
	.text
.global main

main:
	movq	$0, %rbp
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rax, %rdi


.section .data
print_int:
	.asciz	"%d\n"

.section .text
.global fact
.global gcd
.global lntwo

.global main

main:
	movq	$0, %rbp
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rax, %rdi


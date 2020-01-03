    .data
	.text
	.global fact

fact:
	movq 	4(%rsp), %rcx
	movq 	$1 , %rax
	cmpq	%rax , %rcx
	jl	l7
l1:	mulq 	%rcx
	loop 	l1
	jmp	l8
l7:	movq	$1 , %rcx
l8:	ret
    .data
	.text
	.global fact
	.global gcd
	.global lntwo

fact:
	movq 	4(%rsp), %rcx
	movq 	$1, %rax
	cmpq	%rax, %rcx
	jl	l7
l1:	mulq 	%rcx
	loop 	l1
	jmp	l8
l7:	movq	$1, %rcx
l8:	ret

	.global lntwo
lntwo:
    movq	4(%rsp), %rcx
    movq	$1, %rax
    movq	$0, %rbx
l2:	cmpq	%rax, %rcx
    jbe	l3
    imul	$2, %rax
    inc	%rbx
    jmp	l2
l3:	movq	%rbx, %rax
    ret
    .data
	.text
	.global gcd
/* gcd */

gcd:
      	movq 	4(%rsp), %rax
      	movq 	8(%rsp), %rbx
l4:   	cmp 	%rax, %rbx
      	je  	l6
      	jle 	l5
      	sub 	%rax, %rbx
      	jmp 	l4
l5:  	sub  	%rbx, %rax
      	jmp 	l4
l6:
      ret
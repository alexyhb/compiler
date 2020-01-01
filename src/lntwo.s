.data
	.text
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

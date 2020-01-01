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
#include <stdio.h>
#include <lib.s>
	.data
a:	.skip	4
b:	.skip	4
c:	.skip	4
d:	.skip	4
e:	.skip	4
f:	.skip	4
g:	.skip	4
h:	.skip	4
i:	.skip	4
j:	.skip	4
k:	.skip	4
l:	.skip	4
m:	.skip	4
n:	.skip	4
o:	.skip	4
p:	.skip	4
q:	.skip	4
r:	.skip	4
s:	.skip	4
t:	.skip	4
u:	.skip	4
v:	.skip	4
w:	.skip	4
x:	.skip	4
y:	.skip	4
z:	.skip	4
FINT:	.string "%d\n"
	.text
	.global main
main:
	pushl	$0
	call fact
	pushl %eax
	pushl	$1
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
	pushl	$1
	call fact
	pushl %eax
	pushl	$1
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
	pushl	$2
	call fact
	pushl %eax
	pushl	$2
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
	pushl	$3
	call fact
	pushl %eax
	pushl	$6
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
	pushl	$4
	call fact
	pushl %eax
	pushl	$24
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
	pushl	$5
	call fact
	pushl %eax
	pushl	$120
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
	pushl	$6
	call fact
	pushl %eax
	pushl	$720
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
	pushl	$7
	call fact
	pushl %eax
	pushl	$5040
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
	pushl	$8
	call fact
	pushl %eax
	pushl	$40320
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
	pushl	$9
	call fact
	pushl %eax
	pushl	$362880
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
	pushl	$10
	call fact
	pushl %eax
	pushl	$3628800
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
	pushl	$11
	call fact
	pushl %eax
	pushl	$39916800
	popl	%ebx
	popl	%eax
	sub	 %ebx, %eax
	pushl	%eax
	push	$FINT
	call	printf
exit
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
main	push	0
	call fact
	pushq %rax
	push	1
	sub	 %rbx %rax 
	push 	$FINT
	call printf
	push	1
	call fact
	pushq %rax
	push	1
	sub	 %rbx %rax 
	push 	$FINT
	call printf
	push	2
	call fact
	pushq %rax
	push	2
	sub	 %rbx %rax 
	push 	$FINT
	call printf
	push	3
	call fact
	pushq %rax
	push	6
	sub	 %rbx %rax 
	push 	$FINT
	call printf
	push	4
	call fact
	pushq %rax
	push	24
	sub	 %rbx %rax 
	push 	$FINT
	call printf
	push	5
	call fact
	pushq %rax
	push	120
	sub	 %rbx %rax 
	push 	$FINT
	call printf
	push	6
	call fact
	pushq %rax
	push	720
	sub	 %rbx %rax 
	push 	$FINT
	call printf
	push	7
	call fact
	pushq %rax
	push	5040
	sub	 %rbx %rax 
	push 	$FINT
	call printf
	push	8
	call fact
	pushq %rax
	push	40320
	sub	 %rbx %rax 
	push 	$FINT
	call printf
	push	9
	call fact
	pushq %rax
	push	362880
	sub	 %rbx %rax 
	push 	$FINT
	call printf
	push	10
	call fact
	pushq %rax
	push	3628800
	sub	 %rbx %rax 
	push 	$FINT
	call printf
	push	11
	call fact
	pushq %rax
	push	39916800
	sub	 %rbx %rax 
	push 	$FINT
	call printf
exit
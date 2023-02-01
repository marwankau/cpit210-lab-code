.data
	str1:  .asciiz "x greater than 10\n"
	str2:  .asciiz "x less than or equal 10\n"
    x:     .word    1

.globl main
.text

main:

	lw	$t0, x

	bgt	$t0, 10, L1
    j	L2
L1:	
	li	$v0, 4
	la	$a0, str1
	syscall
    j		end_if
    
L2:
	li	$v0, 4
	la	$a0, str2
	syscall


end_if:	
	li	$v0, 10
	syscall

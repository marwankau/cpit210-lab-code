.data
	str1:  .asciiz "x greater than 10\n"
    x:     .word    19

.globl main
.text

main:

	lw	$t0, x

	bgt	$t0, 10, L1
    	j	end_if
L1:	
	li	$v0, 4
	la	$a0, str1
	syscall

end_if:	
	li	$v0, 10
	syscall

.data

	str1:  .asciiz "Hello MIPS"

.globl main
.text

main:
	li	$v0, 4
	la	$a0, str1
	syscall
.data
	str1:  .asciiz "Enter number of iteration: "
	str2:  .asciiz "Enter number #"
	str3:  .asciiz "Average: "
    sum:     .word    0
    x:     .word    0
    c:     .word    0
    n:     .word    0
    avg:     .word    0

.globl main
.text

main:

	li	$v0, 4
	la	$a0, str1
	syscall

    li  $v0, 5
    syscall
    move $t0, $v0
    sw		$t0, n		# 

    lw      $t1, c

    lw      $t5, sum

loop_begin: 
    blt		$t1, $t0, loop_body
    j		loop_end				# jump to loop_end
    
loop_body:
    add $t1, $t1, 1
#    sw  $t1, c
    
	li	$v0, 4
	la	$a0, str2
	syscall

	li	$v0, 1
	move $a0, $t1
	syscall

	li	$v0, 11
	la	$a0, 32
	syscall
    

	li	$v0, 5
	syscall
    move $t2, $v0
    sw  $t2, x
    
    add $t5, $t5, $t2
    sw  $t5, sum

    j		loop_begin				# jump to loop_begin
loop_end:


    lw  $t5, sum
    div $t5, $t0
    mflo   $t6
    
    sw  $t6, avg

    
	li	$v0, 4
	la	$a0, str3
	syscall

    li  $v0, 1
    move $a0, $t6
    syscall
    
	li	$v0, 10
	syscall

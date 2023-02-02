.data
	x: .word 7
	y: .word 8
	z: .word 0

.globl main

.text

main:
    lw  $t0, x
    lw  $t1, y

    add $t2, $t0, $t1
    sw  $t2, z

    li   $v0, 1
    move $a0, $t2
    syscall

    

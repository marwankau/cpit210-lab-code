.data
        str1: .asciiz "Enter 1st an integer: "
        str2: .asciiz "Enter 2nd an integer: "
        str3: .asciiz "The result of add two integers is "
        x: .word 0
        y: .word 0
        z: .word 0

.globl main

.text

main:
    # System.out.print(str1);
    li		$v0, 4		# $v0 = 4
    la		$a0, str1		# 
    syscall

    # x = Integer.parseInt(scan.nextLine());
    li      $v0, 5
    syscall
    move 	$t0, $v0		# $t0 = $v0
    sw		$t0, x		# 
    

    # System.out.print(str2);
    li		$v0, 4		# $v0 = 4
    la		$a0, str2		# 
    syscall

    # y = Integer.parseInt(scan.nextLine());
    li      $v0, 5
    syscall
    move 	$t1, $v0		# $t0 = $v0
    sw		$t1, y		# 

    add     $t2, $t0, $t1
    sw      $t2, z

    li      $v0, 4
    la      $a0, str3
    syscall

    li      $v0, 1
    lw		$t2, z
    move    $a0, $t2
    syscall
    



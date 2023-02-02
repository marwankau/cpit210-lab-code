.data
    str1: .ascii "Enter 1st number: \0"
    str2: .ascii "Enter 2nd number: \0"
    str3: .ascii "Result of adding to numbers is \0"
    x: .word 0
    y: .word 0
    z: .word 0

.globl main

.text

main:

    # System.out.print(str1);
    li  $v0, 4
    la  $a0, str1
    syscall

    # x = Integer.parseInt(scan.nextLine());
    li  $v0, 5
    syscall
    move $t0, $v0
    sw   $t0, x

    # System.out.print(str2);
    li  $v0, 4
    la  $a0, str2
    syscall

    # y = Integer.parseInt(scan.nextLine());
    li  $v0, 5
    syscall
    move $t1, $v0
    sw   $t1, y


    # z = x + y;
    add  $t2, $t0, $t1
    sw   $t2, z

    # System.out.print(str3);
    li  $v0, 4
    la  $a0, str3
    syscall

    # System.out.print(z);
    li  $v0, 1
    lw   $t2, z
    move  $a0, $t2
    syscall


    # Exit program normally
    li  $v0, 10
    syscall
    

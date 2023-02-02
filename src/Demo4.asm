.data
    str1: .asciiz "x greater than 7\n"
    x: .word 8

.globl main
.text

main:
    lw    $t0, x

    bgt   $t0, 7, L1 
    j     L2

L1:   # if true
    li    $v0, 4
    la    $a0, str1
    syscall

L2:    # end if

    # Exit program normally
    li  $v0, 10
    syscall
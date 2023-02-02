.data
    str1:     .asciiz "Enter an integer: "
    str_even: .asciiz " is even"
    str_odd:  .asciiz " is odd"
    str_zero: .asciiz " is zero"
    x:        .word 0

.globl main
.text

main:
    li    $v0, 4
    la    $a0, str1
    syscall

    li    $v0, 5
    syscall
    move  $t0, $v0
    sw    $t0, x

    beqz  $t0, if_zero

    li    $t1, 2
    div   $t0, $t1
    mfhi  $t2

    beqz  $t2, if_even
    j     else
if_zero:

    li    $v0, 1
    move  $a0, $t0
    syscall
    
    li    $v0, 4
    la    $a0, str_zero
    syscall

    j     end_if

if_even:
    li    $v0, 1
    move  $a0, $t0
    syscall
    
    li    $v0, 4
    la    $a0, str_even
    syscall

    j     end_if
else:
    li    $v0, 1
    move  $a0, $t0
    syscall
    
    li    $v0, 4
    la    $a0, str_odd
    syscall

end_if:

    # Exit program normally
    li  $v0, 10
    syscall

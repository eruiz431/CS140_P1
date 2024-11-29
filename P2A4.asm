# Title:  P2A4			Filename:   P2A4.asm
# Author: Edward Ruiz  	Date:  November 21, 2024
# Description:
# Input:
# Output:
################# Data segment #####################
.data
    num:  .word -1, -2, -3
    total:  .word 0
    N: .word 3


################# Code segment #####################

.text
.global main
    main:
        la  $t0, num
        lw  $t2, N
        ori $t3, $zero, 0
    loop:
        addi	$t5, $t5, $t0
        lw	$t5, 0($t5)

        add	$t1, $t1, $t5
        addi	$t3,$t3,1
        sll	$t5, $t3, 2
        bne	$t3,$t2, loop
    sw  $t1, total

    li $v0, 10
    syscall 

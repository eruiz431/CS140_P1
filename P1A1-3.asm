# Title: P1 - 1 Assignmnet 1  		Filename: P1A1.asm
# Author: EdwardR Ruiz			Date: Nov. 12, 2024
# Description: First ASM Program
# Input: None
# Output: None
################# Data segment #####################
.data
	val1:	.word 100
	val2:	.word 200
	val3:	.word 0

################# Code segment #####################
.text
.globl main

main:
	lw $t0, val1		
	lw $t1, val2		
	addu $t2, $t0, $t1	
	sw $t2, val3		
	
			
li $v0, 10  # Exit program
syscall


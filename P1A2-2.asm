##### Data segment 
.data

num: 	.space 12
total: 	.word 100

# Use space for the array num and 
# Use word for total

###MEMORY ADDRESS FOR NUM:           0 x 1001 0000
###                   2nd Element:   0 x 1001 0004
###                   3rd Element:   0 x 1001 0008
###          Address for total:      0 x 1001 0012
          

##### Code segment 
.text
.globl main
main:  
# la $t0, num
  lui $t0, 0x1001      # load upper immediate: 0x1001 0000
  lw $t1, total        # $t1 will be 100
  sw $t1, 0($t0)
  addi $t1, $t1, 1
  sw $t1, 4($t0)
  addi $t1, $t1, 1
  sw $t1, 8($t0)
  
	

# Load the address of num  # la $t0, num
# Load the value of total 
# Store the total to num[0]
# Increase total by 1
# Store the toal to num[1]
# …

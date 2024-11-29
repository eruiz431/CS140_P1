.data
num:    .word 10, 20, 30    # Initialize num[] with values {10, 20, 30}
num2:   .space 12           # Reserve space for num2[] (3 integers)
tmp:    .word 100           # Initialize tmp with 100

.text
.globl main

main:
    # Load the value of tmp into $t0
    la      $t1, tmp         # Load address of tmp into $t1
    lw      $t0, 0($t1)      # Load tmp value (100) into $t0

    # Load the value of num1[2] into $t2
    la      $t1, num         # Load address of num1[] into $t1
    lw      $t2, 8($t1)      # Load num1[2] (which is 30) into $t2

    # Add tmp + num1[2] and store the result in num2[2]
    addu    $t3, $t0, $t2    # $t3 = tmp + num1[2] (100 + 30 = 130)
    
    # Store the result in num2[2]
    la      $t1, num2        # Load address of num2[] into $t1
    sw      $t3, 8($t1)      # Store the result (130) in num2[2]

    # Exit the program
    li      $v0, 10          # Load the syscall code for exit
    syscall                  # Exit the program

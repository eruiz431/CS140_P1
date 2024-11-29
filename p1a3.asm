.data
num:    .space 12          # Reserve space for an array of 3 integers (3 * 4 bytes)
total:  .word 0            # Initialize total to 0

.text
.globl main

main:
    # Load the address of num into $t0
    la      $t0, num       # $t0 = address of num

    # Load the value of total into $t1
    la      $t2, total     # $t2 = address of total
    lw      $t1, 0($t2)    # $t1 = total 

    # Load the value of the first element of num (num[0]) and add it to total
    lw      $t3, 0($t0)    # $t3 = num[0]
    add     $t1, $t1, $t3  # total = total + num[0]

    # Load the value of the second element of num (num[1]) and add it to total
    lw      $t3, 4($t0)    # $t3 = num[1]
    add     $t1, $t1, $t3  # total = total + num[1]

    # Load the value of the 3rd element of num (num[2]) and add it to total
    lw      $t3, 8($t0)    # $t3 = num[2]
    add     $t1, $t1, $t3  # total = total + num[2]

    # Store the final total value back into the data section (total variable)
    sw      $t1, 0($t2)    # Store the final value of total into memory

    # Exit the program
    li      $v0, 10        # Load the syscall code for exit
    syscall               

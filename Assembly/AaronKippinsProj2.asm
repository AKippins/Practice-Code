.text
.globl main
main:      la $t6, space
           la $t8, labl2
           la $t9, labl3
           li $s2, 0
           li $s3, 0
           li $s4, 15 #enter max.
           la $t1, save #starting point for array
           li $t5, 0 #count the values for loop
           li $s7, 10 #enter min.
           la $a0, labl6 
	       li $v0, 4
           syscall
           
build_array:    
    beq $t5,$s4,array_length
    li $v0,5
    syscall
    beqz $v0, user_stop
    sll $t2,$t5,2
    add $t3,$t1,$t2
    sw $v0, 0($t3)
    addi $t5,$t5,1
    j build_array

user_stop: 	   
    bge $t5, $s7, array_length #check it has reached the min.
    la $a0, labl6 
    li $v0, 4
    syscall
    la $a0, newLine
    li $v0, 4
    syscall
    j build_array

array_length:
    la $s6, K
    sw $t5, 0($s6)
    li $t5, 0
    lw $t7, save
    la $a0, newLine
    li $v0, 4
    lw $t0, K
    syscall
    li $v0, 4
    move $a0, $t8
    syscall
    li $v0, 1
    move $a0, $t0
    syscall
    la $a0, newLine
    li $v0, 4
    syscall

print_array:
    beq $t5, $t0, print_line
    sll $t2,$t5,2
    add $t3,$t1,$t2
    lw $t4, 0($t3)
    li $v0, 1
    move $a0, $t4
    syscall
    li $v0, 4
    move $a0, $t6
    syscall 
    addi $t5,$t5,1
    j print_array

print_line: 
    li $t5, 0
    lw $t7, save
    la $a0, newLine
    li $v0, 4
    syscall

done:      
    beq $t5, $t0, largest_number
    sll $t2,$t5,2
    add $t3,$t1,$t2
    lw $t4, 0($t3)
    blt $t7, $t4, change

increment: 
    addi $t5,$t5,1
    j done
       
change:    
    move $t7,$t4
    j increment
	
largest_number:    
    la $t8, labl
    li $v0, 4
    move $a0, $t8
    syscall
    li $v0, 1
    move $a0, $t7
    syscall
    li $t5, 0
    lw $t7, save
    la $a0, newLine
    li $v0, 4
    syscall
    li $s0, 0  
avgcnt:    
    beq $t5, $t0, avg
    sll $t2,$t5,2
    add $t3,$t1,$t2
    lw $t4, 0($t3)
    add $s0, $s0, $t4
    addi $t5,$t5,1
    j avgcnt

avg: 
    div $s1,$s0,$t0
	li $v0, 4
    move $a0, $t9
    syscall
    li $v0, 1
    move $a0, $s1
    syscall
    li $t5, 0
    lw $t7, save
    la $a0, newLine
    li $v0, 4
    syscall

posorneg: 
    beq $t5, $t0, posorneg_print
    sll $t2,$t5,2
    add $t3,$t1,$t2
    lw $t4, 0($t3)
    add $s0, $s0, $t4
    bltz $t4, negplus
    addi $s2, $s2,1 #add to positive

posplus: 
    addi $t5,$t5,1
    j posorneg

negplus: 
    addi $s3, $s3, 1#add Negativie
    j posplus

posorneg_print: 
    la $t8, labl4
    la $t9, labl5
    li $v0, 4
    move $a0, $t8
    syscall
    li $v0, 1
    move $a0, $s2
    syscall
    la $a0, newLine
    li $v0, 4
    syscall
    li $v0, 4
    move $a0, $t9
    syscall
    li $v0, 1
    move $a0, $s3
    syscall
    li $t5, 0
    lw $t7, save
    la $a0, newLine
    li $v0, 4
    syscall
        



jr $ra
.data
save: .space 60
K: .space 4
labl: .asciiz "Largest Value: "
labl2: .asciiz "Length of Array: "
labl3: .asciiz "Average of Array: "
labl4: .asciiz "Number of Positive: "
labl5: .asciiz "Number of Negative: "
labl6: .asciiz "Please Input 10 to 15 Integers(0 to exit)\n"
space: .asciiz " "
newLine: .asciiz "\n"

.end main

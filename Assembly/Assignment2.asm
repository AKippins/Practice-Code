.text
.globl main

main:
    li $s1, 0
    li $s2, 0
    li $s3, 0 #loop count
    li $s4, 10 #min
    li $s5, 15 #max
    la $s6, newline
    la $t1, array #starting the array
    la $t2, K

    
    la $a0, prompt
    li $v0, 4
    syscall #ask user to input numbers
    
build_array:
    beq $s5, $s3, array_length
    li $v0, 5
    syscall
    beqz $v0, user_stop
    sll $t4, $s3, 2
    add $t3, $t1, $t4
    sw $v0, 0($t3)
    addi $s3, $s3, 1 
    j build_array
    
user_stop:
    bge $s3, $s4, array_length
    la $a0, prompt
    li $v0, 4
    syscall #ask user to input numbers
    j build_array
    
array_length:
    sw $s3, 0($t2)
    li $s3, 0
    la $a0, newline
    li $v0, 4
    syscall
    li $v0, 4
    la $a0, arrlen
    syscall
    li $v0, 1
    lw $a0, K
    syscall
    la $a0, newline
    li $v0, 4
    syscall
    
print_array: 
    beq $s3, $a0, print_line
    sll $t4, $s3, 2
    add $t3, $t1, $t4
    lw $t4, 0($t3)
    li $v0, 1
    move $a0, $t4
    syscall
    li $v0, 4
    la $a0, space
    syscall
    addi $s3, $s3, 1
    j print_array
    
print_line:
    li $s3, 0
    la $a0, newline
    li $v0, 4
    syscall
    
done:
    beq $s3, $a0, next
    sll $t4, $s3, 2
    add $t3, $t1, $t4
    lw $t4, 0($t3)
    blt $s4, $t4, change

increment:
    addi $s3, $s3, 1
    j done
    
change:
    move $s4, $t4
    j increment
    
next:
    la $a0, lgstval
    li $v0, 4
    syscall
    li $v0, 1
    move $a0, $s4
    syscall
    li $s3, 0
    la $a0, newline
    li $v0, 4
    syscall
    
    
    
    
    li $v0, 10
    syscall
    
    .data
        array: .space 60
        K: .space 4
        prompt: .asciiz "Please input 10 to 15 integers (0 to exit)\n"
        lgstval: .asciiz "Largest Value: "
        arrlen: .asciiz "Array Length: "
        arravg: .asciiz "Array Average: "
        numpos: .asciiz "Number of Positive Numbers: "
        numneg: .asciiz "Number on Negative Numbers: "
        space: .asciiz " "
        newline: .asciiz "\n"
    
    .end main
    
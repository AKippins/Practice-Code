    .data 

message: .asciiz "Enter a number into the array.(max 10 numbers) \n"
array: .space 40
message2: .asciiz "\nWhat's was previously put into the array: "
message3: .asciiz "\nFinished"
    
    .globl main
    .text

main:
    la $a1, array
    li $a2, 0
    
    j loop
    
    
loop:
    beq $a2, 10, end
    li $v0, 4
    la $a0, message
    syscall
    
    la $a0, array($a2)
    la $a1, array
    li $v0, 8
    beq $a0, 0, end
    syscall
    
    li $v0, 4
    la $a0, message2
    syscall
    
    li $v0, 4
    la $a0, array($a2)
    syscall
    
    addi $a2, $a2, 1
    j loop
end:
    li $v0, 4
    la $a0, message3
    syscall

    li $v0, 10
    syscall
    
    
    .end main
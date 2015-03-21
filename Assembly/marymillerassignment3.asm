.text
.globl main
main:      la $t1, A #loading address of Matrix A
	   li $t2, 0 #Keep track if gone through Matrix B
           li $t3, 16 #Total Size of matrix Array
           li $s0, 4 #Total size of row
           li $t5, 0 #Count of Number in Row
           li $s1, -1 #Count of Total value 
           li $s4, 0
	   la $a0, inputA
           li $v0,4
           syscall
           la $a0, newLine
           syscall
           ##This is to print the first matrix Label
                      
READM:     beq $s4, $t3, READC
	   li $v0, 5
	   syscall
	   sll $t2, $s4,2
	   add $s5, $t2,$t1
	   sw $v0,0($s5) 
	   addi $s4,$s4,1
	   j READM
	   
READC:     la $a0, newLine 
           li $v0,4
           syscall
	   la $a0, inputB
           li $v0,4
           syscall 
           la $a0, newLine 
           syscall
	   li $s4, 0
	   la $t1, B
	   addi $s1, $s1, 1
	   beqz $s1, READM
	   li $t2, 0 #Keep track if gone through Matrix B
	   li $s1, 0
	   la $t1, A	
	   la $a0, lblA
           li $v0,4
           syscall 
           la $a0, newLine 
           syscall #prints out space value
              
PRINTM:    beq $t5, $s0, PRINTC #check if it has gone through the whole row
           sll $t6,$s1,2 
           add $t7,$t1,$t6 #get address of value
           lw $t8, 0($t7)
           li $v0, 1
           move $a0, $t8
           syscall #prints out values in matrix
           li $v0, 4
           la $a0, space
           syscall #prints out space value 
           addi $t5,$t5,1
           addi $s1,$s1,1
           j PRINTM
           
PRINTC:    la $a0, newLine 
           li $v0, 4
           syscall#Creates new line for matrix
           li $t5, 0
           bne $s1, $t3, PRINTM #check total to entire matrix
  	   beq $t2, 0, PRINTLBL #Prints first round of Matrix B
  	   
MID:       addi $t2,$t2,1 #add to say it has made it through to Matrix B
           la $t1, B #load Matrix B addres
           li $s1, 0 #restart count value
           bne $t2, 2, PRINTM #prints out total val
           li $v0,4
	   la $a0, newLine 
           syscall
           li $t5, 0 #Count of Number in Row
           li $s1, 0 #Count of Total value 
           la $t1, A
           la $t2, B
           la $a0, lblC
           li $v0,4
           syscall
           la $a0, newLine 
           syscall
           j SUBM #done with printing Matrix
           
           
PRINTLBL:  la $a0, newLine 
           li $v0, 4
           syscall #prints Line
	   la $a0, lblB
           li $v0,4
           syscall #prints Label B
           la $a0, newLine 
           syscall #prints out space value 
           j MID
SUBM:	   beq $t5, $s0, SUBC #check if it has gone through the whole row
           sll $t6,$s1,2 
           add $t7,$t1,$t6 #get address of value
           add $s2, $t2, $t6
           lw $t8, 0($t7)#a
           lw $s3, 0($s2)#b
           sub $t8, $t8, $s3
           sw $t8, 0($t7)
           li $v0, 1
           move $a0, $t8
           syscall #prints out values in matrix
           li $v0, 4
           la $a0, space
           syscall #prints out space value 
           addi $t5,$t5,1
           addi $s1,$s1,1
           j SUBM
           
SUBC:      la $a0, newLine 
           li $v0, 4
           syscall#Creates new line for matrix
           li $t5, 0
           bne $s1, $t3, SUBM
jr $ra

.data
A: .space 64
B: .space 64
matLen: .word 4
matLenTot: .word 16
space: .asciiz " "
newLine: .asciiz "\n"
lblA: .asciiz "Matrix A"
lblB: .asciiz "Matrix B"
lblC: .asciiz "Matrix C"
inputA: .asciiz "Input Matrix A"
inputB: .asciiz "Input Matrix B"
parL: .asciiz "("
parR: .asciiz ")"


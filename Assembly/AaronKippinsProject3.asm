#Aaron Kippins
#10/29/14

.text
.globl main

main:  
       la $t1, A 
	   li $t2, 0 
       li $t3, 16 
       li $s0, 4 
       li $t5, 0 
       li $s1, -1 
       li $s4, 0
	   la $a0, inputA
       li $v0,4
       syscall
       la $a0, newLine
       syscall
       
                      
InputM: 
       beq $s4, $t3, SwitchInput
	   li $v0, 5
	   syscall
	   sll $t2, $s4,2
	   add $s5, $t2,$t1
	   sw $v0,0($s5) 
	   addi $s4,$s4,1
	   j InputM
	   
SwitchInput:     
       la $a0, newLine 
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
	   beqz $s1, InputM
	   li $t2, 0 
	   li $s1, 0
	   la $t1, A	
	   la $a0, matA
       li $v0,4
       syscall 
       la $a0, newLine 
       syscall 
              
PrintM:
       beq $t5, $s0, NextLine 
       sll $t6,$s1,2 
       add $t7,$t1,$t6 
       lw $t8, 0($t7)
       li $v0, 1
       move $a0, $t8
       syscall 
       li $v0, 4
       la $a0, space
       syscall 
       addi $t5,$t5,1
       addi $s1,$s1,1
       j PrintM
           
NextLine:
       la $a0, newLine 
       li $v0, 4
       syscall
       li $t5, 0
       bne $s1, $t3, PrintM 
  	   beq $t2, 0, PrintLblB 
  	   
SwiPrintArr:   
       addi $t2,$t2,1 
       la $t1, B 
       li $s1, 0 
       bne $t2, 2, PrintM 
       li $v0,4
	   la $a0, newLine 
       syscall
       li $t5, 0 
       li $s1, 0 
       la $t1, A
       la $t2, B
       la $a0, matC
       li $v0,4
       syscall
       la $a0, newLine 
       syscall
       j SubM 
           
           
PrintLblB:
       la $a0, newLine 
       li $v0, 4
       syscall 
	   la $a0, matB
       li $v0,4
       syscall 
       la $a0, newLine 
       syscall 
       j SwiPrintArr
       
SubM:
       beq $t5, $s0, NextLineSub 
       sll $t6,$s1,2 
       add $t7,$t1,$t6 
       add $s2, $t2, $t6
       lw $t8, 0($t7)
       lw $s3, 0($s2)
       sub $t8, $t8, $s3
       sw $t8, 0($t7)
       li $v0, 1
       move $a0, $t8
       syscall 
       li $v0, 4
       la $a0, space
       syscall 
       addi $t5,$t5,1
       addi $s1,$s1,1
       j SubM
           
NextLineSub:  
       la $a0, newLine 
       li $v0, 4
       syscall
       li $t5, 0
       bne $s1, $t3, SubM

jr $ra

.data
A: .space 64
B: .space 64
matLen: .word 4
matLenTot: .word 16
space: .asciiz " "
newLine: .asciiz "\n"
matA: .asciiz "Matrix A"
matB: .asciiz "Matrix B"
matC: .asciiz "Matrix C"
inputA: .asciiz "Input Matrix A"
inputB: .asciiz "Input Matrix B"



.data
    var1: .word 120
    var2: .word 5
    var3: .word 2
    var4: .word 95

.globl main
.text

main: lw $s1, var1
      lw $s2, var2 
      lw $s3, var3
      lw $s4, var4
      li $s5, 10
      li $s6, 15
      
      mult $s5, $s3
      mflo $s7
      div $s6, $s2
      mflo $s8
      add $s8, $s1, $s8
      add $s7, $s7, $s4
      sub $s7, $s8, $s7
      sw $v0, ($s7)
      
      syscall
      
      .end main

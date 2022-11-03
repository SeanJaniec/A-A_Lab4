.data

i: .word 0
array: .word 1,2,4,8,16,32,64,128,256,512,0

.text
 
 #do work
 lw $s0, i
 # load array[i]
 
 
 
 
 #compare array[i] to 0
 #bne/beq
 addi $t0, $zero, 0
 
 loop:
 	lw $t1, array($t0) 
 	beq $t1, 0, exit
 	add $t0, $t0, 4
 
 #i++
	 addi $s0, $s0, 1
	 j loop
 
 exit:
 
 li $v0, 1
 move $a0, $s0
 syscall
.data
	array: .word 1, 2, 4, 8, 9, 11, 12, 16, 21, 24
	length: .word 10
	count: .word 0
	i: .word 0

.text


	lw $s0, count
	lw $s1, length
	lw $s2, i
	la $s3, array



	#addi $t0, $zero, 4
	#addi $t2, $s2, 0
	

loop:


	beq $s2, $s1, exit
	addi $s2, $s2, 1
	#div array($t2), $t0
	#mfhi $t1
	lw $t0, 0($s3)
	addi $s3, $s3, 4
	andi $t0, $t0, 3
	beq $t0, 0, loop
	addi $s0, $s0, 1
	j loop

exit:





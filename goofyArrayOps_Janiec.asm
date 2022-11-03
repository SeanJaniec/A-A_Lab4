.data 

i: .word 5
j: .word 2
A: .word 1,2,3,4,5,6,7,8,9,10
B: .word 1,2,3,4,5,6,7,8,9,10

.text

lw $s0, i
lw $s1, j
la $s2, A
la $s3, B

sub $t0, $s0, $s1
sll $t0, $t0, 2
add $t0, $s2, $t0
lw $t0, 0($t0)

add $t3, $s0, $s1
sll $t3, $t3, 2
add $t3, $s2, $t3
lw $t3, 0($t3)

add $t4, $t3, $t0
sw $t4, 12($s3)
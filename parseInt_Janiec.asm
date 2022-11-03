.data

	Onetwentyfour: .asciiz "124"
	onetwentyfive: .byte '1', '2', '5', '\0'

.text


main:

	la $a0, Onetwentyfour
	jal parseInt
	move $s0, $v0

parseint:
	move $t0, $a0
	lbu $t1, 0($t0)


.text
main:
	li $a0, 0
	sw $a0, -8($fp)
	li $a0, 0
	sw $a0, -12($fp)
	b test_for_1
body_for_1:
	li $a0, 0
	sw $a0, -16($fp)
	li $a0, 10
	sw $a0, -16($fp)
	b test_for_2
body_for_2:
	lw $a0, -12($fp)
	add $a0, $a0, 1
	sw $a0, -12($fp)
	lw $a0, -16($fp)
	sub $a0, $a0, 1
	sw $a0, -16($fp)
test_for_2:
	lw $a0, -16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sgt $a0, $t1, $a0
	bnez $a0, body_for_2
	lw $a0, -8($fp)
	add $a1, $a0, 1
	sw $a1, -8($fp)
test_for_1:
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 10
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_for_1
	lw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 100
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	beqz $a0, else_1
	la $a0, string_1
	li $v0, 4
	syscall
else_1:
.data
string_1:
	.asciiz "ok\n"

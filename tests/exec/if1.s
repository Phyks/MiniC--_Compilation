.text
main:
	li $a0, 1
	beqz $a0, else_1
	li $a0, 0
	beqz $a0, else_2
else_2:
	li $a0, 1
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	beqz $a0, else_3
	li $a0, 0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	li $v0, 1
	syscall
else_3:
	la $a0, string_1
	li $v0, 4
	syscall
else_1:
.data
string_1:
	.asciiz "hello world\n"

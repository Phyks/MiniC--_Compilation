.text
main:
	li $a0, 1
	sw $a0, -8($fp)
	li $a0, 0
	sw $a0, -12($fp)
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	and $a0, $t1, $a0
	beqz $a0, else_1
	la $a0, string_1
	li $v0, 4
	syscall
else_1:
.data
string_1:
	.asciiz "non, tous les programmes n'affichent pas hello world\n"

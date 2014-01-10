.text
	b function_main
function_main:
	add $sp, $sp, -20
	sw $fp, 16($sp)
	add $fp, $sp, 16
	sw $ra, 12($sp)
	li $a0, 1
	sw $a0, -8($fp)
	li $a0, 0
	sw $a0, -12($fp)
	add $sp, $sp, 0
	lw $a0, -8($fp)
	sne $a0, $a0, $zero
	beqz $a0, lazy_end1
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	sne $a0, $a0, $zero
	lw $t1, 0($sp)
	add $sp, $sp, 4
	and $a0, $t1, $a0
lazy_end1:
	beqz $a0, else_1
	la $a0, string_1
	li $v0, 4
	syscall
	b end_if_1
else_1:
end_if_1:
	add $sp, $sp, 0
end_function_main:
	lw $ra, 12($sp)
	lw $fp, 16($sp)
	add $sp, $sp, 20
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "non, tous les programmes n'affichent pas hello world\n"

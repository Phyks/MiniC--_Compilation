.text
	b function_main
function__A__A1:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	la $a0, string_1
	li $v0, 4
	syscall
end_function__A__A1:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	move $v0, $a0
	jr $ra
function_main:
	add $sp, $sp, -16
	sw $fp, 12($sp)
	add $fp, $sp, 12
	sw $ra, 8($sp)
	li $v0, 9
	li $a0, 0
	syscall
	la $a0, function__A__A1
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	jalr $a0
	add $sp, $sp, 4
	sw $a0, -8($fp)
end_function_main:
	lw $ra, 8($sp)
	lw $fp, 12($sp)
	add $sp, $sp, 16
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "brand new world\n"

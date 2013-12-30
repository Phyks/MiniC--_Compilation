.text
	b function_main
function_main:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
	add $sp, $sp, 0
	li $a0, 1
	beqz $a0, else_1
	add $sp, $sp, 0
	li $a0, 0
	beqz $a0, else_2
	b end_if_2
else_2:
	add $sp, $sp, 0
	add $sp, $sp, 0
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
	b end_if_3
else_3:
	la $a0, string_1
	li $v0, 4
	syscall
end_if_3:
	add $sp, $sp, 0
	add $sp, $sp, 0
end_if_2:
	add $sp, $sp, 0
	b end_if_1
else_1:
end_if_1:
	add $sp, $sp, 0
end_function_main:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "hello world\n"

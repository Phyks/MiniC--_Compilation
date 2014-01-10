.text
	b function_main
function__fact_rec1:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	add $sp, $sp, 0
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sle $a0, $t1, $a0
	beqz $a0, else_1
	li $a0, 1
	move $v0, $a0
	b end_function__fact_rec1
	b end_if_1
else_1:
end_if_1:
	add $sp, $sp, 0
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__fact_rec1
	add $sp, $sp, 4
	move $a0, $v0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	move $v0, $a0
	b end_function__fact_rec1
end_function__fact_rec1:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	move $v0, $a0
	jr $ra
function_main:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	li $a0, 5
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__fact_rec1
	add $sp, $sp, 4
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "\n"

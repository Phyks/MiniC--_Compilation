.text
	b function_main
function_fact_rec:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
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
	b end_function_fact_rec
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
	jal function_fact_rec
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	move $v0, $a0
	b end_function_fact_rec
end_function_fact_rec:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	move $v0, $a0
	jr $ra
function_main:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 5
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_fact_rec
	add $sp, $sp, 4
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "\n"

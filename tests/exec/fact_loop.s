.text
	b function_main
function_fact_loop1:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	li $a0, 1
	sw $a0, -8($fp)
	add $sp, $sp, 0
	b test_while_1
body_while_1:
	add $sp, $sp, 0
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 4($fp)
	sub $a1, $a0, 1
	sw $a1, 4($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	sw $a0, -8($fp)
	add $sp, $sp, 0
test_while_1:
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sgt $a0, $t1, $a0
	bnez $a0, body_while_1
	add $sp, $sp, 0
	lw $a0, -8($fp)
	move $v0, $a0
	b end_function_fact_loop1
end_function_fact_loop1:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
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
	jal function_fact_loop1
	add $sp, $sp, 4
	move $a0, $v0
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

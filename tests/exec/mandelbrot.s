.text
	b function_main
function_add1:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 8($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	move $v0, $a0
	b end_function_add1
end_function_add1:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	move $v0, $a0
	jr $ra
function_sub2:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 8($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	move $v0, $a0
	b end_function_sub2
end_function_sub2:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	move $v0, $a0
	jr $ra
function_mul3:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 8($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	sw $a0, -8($fp)
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 8192
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 8192
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	move $v0, $a0
	b end_function_mul3
end_function_mul3:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	move $v0, $a0
	jr $ra
function_div4:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 8192
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	sw $a0, -8($fp)
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 8($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	move $v0, $a0
	b end_function_div4
end_function_div4:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	move $v0, $a0
	jr $ra
function_of_int5:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 8192
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	move $v0, $a0
	b end_function_of_int5
end_function_of_int5:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	move $v0, $a0
	jr $ra
function_iter6:
	add $sp, $sp, -16
	sw $fp, 12($sp)
	add $fp, $sp, 12
	sw $ra, 8($sp)
	add $sp, $sp, 0
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 100
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	beqz $a0, else_1
	li $a0, 1
	move $v0, $a0
	b end_function_iter6
	b end_if_1
else_1:
end_if_1:
	add $sp, $sp, 0
	lw $a0, 16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_mul3
	add $sp, $sp, 8
	move $a0, $v0
	sw $a0, -8($fp)
	lw $a0, 20($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 20($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_mul3
	add $sp, $sp, 8
	move $a0, $v0
	sw $a0, -12($fp)
	add $sp, $sp, 0
	lw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_add1
	add $sp, $sp, 8
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 4
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sgt $a0, $t1, $a0
	beqz $a0, else_2
	li $a0, 0
	move $v0, $a0
	b end_function_iter6
	b end_if_2
else_2:
end_if_2:
	add $sp, $sp, 0
	lw $a0, 12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 20($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_mul3
	add $sp, $sp, 8
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_mul3
	add $sp, $sp, 8
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_add1
	add $sp, $sp, 8
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_sub2
	add $sp, $sp, 8
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_add1
	add $sp, $sp, 8
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_iter6
	add $sp, $sp, 20
	move $a0, $v0
	move $v0, $a0
	b end_function_iter6
end_function_iter6:
	lw $ra, 8($sp)
	lw $fp, 12($sp)
	add $sp, $sp, 16
	move $v0, $a0
	jr $ra
function_inside7:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_iter6
	add $sp, $sp, 20
	move $a0, $v0
	move $v0, $a0
	b end_function_inside7
end_function_inside7:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	move $v0, $a0
	jr $ra
function_main:
	add $sp, $sp, -40
	sw $fp, 36($sp)
	add $fp, $sp, 36
	sw $ra, 32($sp)
	li $a0, 30
	sw $a0, -8($fp)
	li $a0, 2
	neg $a0, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	sw $a0, -12($fp)
	li $a0, 1
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	sw $a0, -16($fp)
	li $a0, 2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -8($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_sub2
	add $sp, $sp, 8
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_div4
	add $sp, $sp, 8
	move $a0, $v0
	sw $a0, -20($fp)
	li $a0, 1
	neg $a0, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	sw $a0, -24($fp)
	li $a0, 1
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	sw $a0, -28($fp)
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -24($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -28($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_sub2
	add $sp, $sp, 8
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_div4
	add $sp, $sp, 8
	move $a0, $v0
	sw $a0, -32($fp)
	li $a0, 0
	sw $a0, -36($fp)
	add $sp, $sp, 0
	li $a0, 0
	sw $a0, -36($fp)
	b test_for_1
body_for_1:
	add $sp, $sp, -8
	lw $a0, -32($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -36($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_mul3
	add $sp, $sp, 8
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -24($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_add1
	add $sp, $sp, 8
	move $a0, $v0
	sw $a0, -40($fp)
	li $a0, 0
	sw $a0, -44($fp)
	add $sp, $sp, 0
	li $a0, 0
	sw $a0, -44($fp)
	b test_for_2
body_for_2:
	add $sp, $sp, -4
	lw $a0, -20($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -44($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_of_int5
	add $sp, $sp, 4
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_mul3
	add $sp, $sp, 8
	move $a0, $v0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_add1
	add $sp, $sp, 8
	move $a0, $v0
	sw $a0, -48($fp)
	add $sp, $sp, 0
	lw $a0, -40($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -48($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_inside7
	add $sp, $sp, 8
	move $a0, $v0
	beqz $a0, else_3
	la $a0, string_1
	li $v0, 4
	syscall
	b end_if_3
else_3:
	la $a0, string_2
	li $v0, 4
	syscall
end_if_3:
	add $sp, $sp, 0
	add $sp, $sp, 4
	lw $a0, -44($fp)
	add $a1, $a0, 1
	sw $a1, -44($fp)
test_for_2:
	lw $a0, -44($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -8($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_for_2
	add $sp, $sp, 0
	la $a0, string_3
	li $v0, 4
	syscall
	add $sp, $sp, 8
	lw $a0, -36($fp)
	add $a1, $a0, 1
	sw $a1, -36($fp)
test_for_1:
	lw $a0, -36($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -8($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_for_1
	add $sp, $sp, 0
end_function_main:
	lw $ra, 32($sp)
	lw $fp, 36($sp)
	add $sp, $sp, 40
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "0"
string_2:
	.asciiz "1"
string_3:
	.asciiz "\n"

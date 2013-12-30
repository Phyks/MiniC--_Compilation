.text
	b function_main
function_main:
	add $sp, $sp, -16
	sw $fp, 12($sp)
	add $fp, $sp, 12
	sw $ra, 8($sp)
	li $a0, 0
	sw $a0, -8($fp)
	li $a0, 0
	sw $a0, -12($fp)
	add $sp, $sp, 0
	li $a0, 0
	sw $a0, -8($fp)
	b test_for_1
body_for_1:
	add $sp, $sp, 0
	li $a0, 0
	sw $a0, -12($fp)
	b test_for_2
body_for_2:
	la $a0, string_1
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -12($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	lw $a0, -12($fp)
	add $a1, $a0, 1
	sw $a1, -12($fp)
test_for_2:
	lw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_for_2
	add $sp, $sp, 0
	lw $a0, -8($fp)
	add $a1, $a0, 1
	sw $a1, -8($fp)
test_for_1:
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_for_1
	add $sp, $sp, 0
	la $a0, string_3
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_4
	li $v0, 4
	syscall
	la $a0, string_5
	li $v0, 4
	syscall
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_6
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 8($sp)
	lw $fp, 12($sp)
	add $sp, $sp, 16
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "i*j = "
string_2:
	.asciiz "\n"
string_3:
	.asciiz "i = "
string_4:
	.asciiz "\n"
string_5:
	.asciiz "j = "
string_6:
	.asciiz "\n"

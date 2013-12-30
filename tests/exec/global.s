.text
	b function_main
function_main:
	add $sp, $sp, -16
	sw $fp, 12($sp)
	add $fp, $sp, 12
	sw $ra, 8($sp)
	li $a0, 41
	sw $a0, var_x
	lw $a0, var_x
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
	la $a0, var_x
	sw $a0, var_p
	lw $a0, var_p
	lw $a0, 0($a0)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	lw $a1, var_p
	sw $a0, 0($a1)
	lw $a0, var_x
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	lw $a0, var_x
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sw $a0, var_x
	lw $a0, var_x
	li $v0, 1
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 8($sp)
	lw $fp, 12($sp)
	add $sp, $sp, 16
	li $v0, 10
	syscall
.data
var_x:
	.word 0
var_p:
	.word 0
string_1:
	.asciiz "\n"
string_2:
	.asciiz "\n"
string_3:
	.asciiz "\n"

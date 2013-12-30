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
	lw $a0, -12($fp)
	add $a0, $a0, 1
	sw $a0, -12($fp)
	sw $a0, -8($fp)
	lw $a0, -12($fp)
	add $a0, $a0, 1
	sw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -8($fp)
	add $a0, $a0, 1
	sw $a0, -8($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sw $a0, -12($fp)
	lw $a0, -12($fp)
	add $a1, $a0, 1
	sw $a1, -12($fp)
	lw $a0, -8($fp)
	sub $a0, $a0, 1
	sw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -12($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sw $a0, -8($fp)
	la $a0, string_1
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_4
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
	.asciiz "x="
string_2:
	.asciiz "\n"
string_3:
	.asciiz "y="
string_4:
	.asciiz "\n"

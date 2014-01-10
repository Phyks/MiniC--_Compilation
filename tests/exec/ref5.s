.text
	b function_main
function__f1:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	lw $a1, 4($fp)
	lw $a0, 0($a1)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	lw $a1, 4($fp)
	sw $a0, 0($a1)
end_function__f1:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	move $v0, $a0
	jr $ra
function_main:
	add $sp, $sp, -32
	sw $fp, 28($sp)
	add $fp, $sp, 28
	sw $ra, 24($sp)
	li $a0, 41
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
	la $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__f1
	add $sp, $sp, 4
	move $a0, $v0
	la $a0, string_3
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_4
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	sw $a0, -8($fp)
	la $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__f1
	add $sp, $sp, 4
	move $a0, $v0
	la $a0, string_5
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_6
	li $v0, 4
	syscall
	la $a0, string_7
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_8
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	sw $a0, -8($fp)
	la $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__f1
	add $sp, $sp, 4
	move $a0, $v0
	la $a0, string_9
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_10
	li $v0, 4
	syscall
	la $a0, string_11
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_12
	li $v0, 4
	syscall
	la $a0, string_13
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_14
	li $v0, 4
	syscall
	la $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__f1
	add $sp, $sp, 4
	move $a0, $v0
	la $a0, string_15
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_16
	li $v0, 4
	syscall
	la $a0, string_17
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_18
	li $v0, 4
	syscall
	la $a0, string_19
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_20
	li $v0, 4
	syscall
	la $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__f1
	add $sp, $sp, 4
	move $a0, $v0
	la $a0, string_21
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_22
	li $v0, 4
	syscall
	la $a0, string_23
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_24
	li $v0, 4
	syscall
	la $a0, string_25
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_26
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 24($sp)
	lw $fp, 28($sp)
	add $sp, $sp, 32
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "x = "
string_2:
	.asciiz "\n"
string_3:
	.asciiz "x = "
string_4:
	.asciiz "\n"
string_5:
	.asciiz "x = "
string_6:
	.asciiz "\n"
string_7:
	.asciiz "z = "
string_8:
	.asciiz "\n"
string_9:
	.asciiz "x = "
string_10:
	.asciiz "\n"
string_11:
	.asciiz "z = "
string_12:
	.asciiz "\n"
string_13:
	.asciiz "u = "
string_14:
	.asciiz "\n"
string_15:
	.asciiz "x = "
string_16:
	.asciiz "\n"
string_17:
	.asciiz "z = "
string_18:
	.asciiz "\n"
string_19:
	.asciiz "u = "
string_20:
	.asciiz "\n"
string_21:
	.asciiz "x = "
string_22:
	.asciiz "\n"
string_23:
	.asciiz "z = "
string_24:
	.asciiz "\n"
string_25:
	.asciiz "u = "
string_26:
	.asciiz "\n"

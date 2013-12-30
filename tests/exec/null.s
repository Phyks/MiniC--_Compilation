.text
	b function_main
function_main:
	add $sp, $sp, -20
	sw $fp, 16($sp)
	add $fp, $sp, 16
	sw $ra, 12($sp)
	li $a0, 0
	sw $a0, -8($fp)
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
	li $a0, 1
	sw $a0, -12($fp)
	la $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	la $a0, object_a
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	li $v0, 1
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 12($sp)
	lw $fp, 16($sp)
	add $sp, $sp, 20
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "\n"
string_2:
	.asciiz "\n"
object_a:
string_3:
	.asciiz "\n"

.text
	b function_main
function_main:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	lw $a0, 1($fp)
	sub $a1, $a0, 1
	sw $a1, 1($fp)
end_function_main:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	li $v0, 17
	syscall
.data
object_s:
	.word 0

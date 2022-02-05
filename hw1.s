	.globl main
	.text

main:	# Initialize variables
	li	$t1, 0		#loop counter
	li	$t2, 0		#1's counter

	# Print string msg1
	li	$v0,4		# print_string syscall code = 4
	la	$a0, msg1	# load the address of msg
	syscall

	# Get input A from user and save
	li	$v0,5		# read_int syscall code = 5
	syscall	
	move	$t0,$v0		# syscall results returned in $v0

loop:	addi	$t1, $t1, 1	# i = i + 1
	sll	$t3, $t0, 1	# store first bit of number in temp
	beq	$t3, 1, found	# if the bit is 1, branch to add to ones
	blt	$t1, 36, loop	# repeat loop if count < 36

exit:	li	$v0, 4
	la	$a0, msg2
	syscall

	li	$v0, 1
	move	$a0, $t2
	syscall

	li	$v0, 10
	syscall

found:	addi	$t2, $t2, 1
	b 	loop

	.data
	msg1:	.asciiz	"Enter A:   "
	msg2:	.asciiz "Number of 1s in A = "	

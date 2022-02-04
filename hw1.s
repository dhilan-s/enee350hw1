	.globl main
	.text

main:	# Use t1 for count of 1's
	li	$t1, 0

	# Print string msg1
	li	$v0,4		# print_string syscall code = 4
	la	$a0, msg1	# load the address of msg
	syscall

	# Get input A from user and save
	li	$v0,5		# read_int syscall code = 5
	syscall	
	move	$t0,$v0		# syscall results returned in $v0

loop:	

	.data
	msg1:	.asciiz	"Enter A:   "

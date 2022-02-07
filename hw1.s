	.globl main

    .data
	msg1:	.asciiz	"Enter A:   "
	msg2:	.asciiz "Number of 1s in A = "

	.text

main:	# Initialize variables
	li	    $t1, 0		#loop counter
	li	    $t2, 0		#1's counter

	# Print string msg1
	li	    $v0, 4		# print_string syscall code = 4
	la	    $a0, msg1	# load the address of msg
	syscall

	# Get input A from user and save
	li	    $v0, 5		# read_int syscall code = 5
	syscall	
	move    $t0, $v0		# syscall results returned in $v0

loop:	
    andi    $t4, $t0, 1 # t4 gets 1 if rightmost bit is 1 and 0 if not 
	srl	    $t0, $t0, 1	# shift t0 right once
    addi	$t1, $t1, 1	# i = i + 1
    beq     $t4, 1, increment
    blt	    $t1, 32, loop	# repeat loop if count < 32

increment:
    addi    $t2, $t2, 1 # increment 1's counter
	blt	    $t1, 32, loop	# repeat loop if count < 32

exit:	
    li	    $v0, 4 # print string
	la	    $a0, msg2 # prints msg2
	syscall

	li	    $v0, 1 # prints integer
	move	$a0, $t2 # print 1's counter
	syscall

	li	    $v0, 10 # exit
	syscall

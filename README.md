# enee350hw1
ENEE 350 - Spring 2022

HW1 (Due online by 11:59pm on Saturday, February 12)

[MIPS32 Assembly programming]  In this question you will write a new MIPS32 assembly language program and simulate it on the MIPS simulator called “spim”.  MIPS is the name of a simple RISC ISA.  Before attempting to do this question, familiarize yourself with the MIPS32 ISA and how to use the software by visiting the class website and reading all the documents in the "Assignments" folder with MIPS in their title. You can download the example assembly programs there too.

Homework 1 and 6 must be done in groups of 2 students, not more and not less. If you have a compelling reason why you must work alone, email the TA and I asking for prior permission to work alone, along with an explanation of your compelling reason.

[Problem statement] Write a MIPS32 assembly language program that takes a single 32-bit signed integer A, computes the number of 1's that are in the binary representation of that integer, and prints out the answer on the screen.  For example, if A=13 the answer should be 3. This is because 13 in binary is 1101 (ignoring leading zeros), so there are 3 1's in the binary representation. Similarly, if A=31 the answer should be 5 (11111). 

In writing the program, do not attempt to call any library function for parity or any other library function. The MIPS assembly code you write should do all of the computation by itself. Please put your entire code in the _main function. There is no need to write any other functions in your code.

Your program should work for negative numbers in their two’s complement format as well. For example -5 in a signed 32-bit format is …011, where … is 29 consecutive 1s. (Review two’s complement formats if you don’t remember this from ENEE 244). So the output of this program for -5 should be 31.

The computation should be done using bit masking. Recall that bitmasking is where we use bitwise operators to extract information about specific bits in a given number. For example, with 3 bit registers, if A=101 is our number and M=001 is our mask, A & M will tell us whether the least significant bit of A is 1 or 0. Recall that & is the symbol for binary bit-wise AND. For our program, our mask M will remain the same (1), and we will repeatedly right-shift A and compute A & M. On our first iteration 101 & M = 1, on our second iteration 010 & M = 0, and on our third iteration 001 & M = 1. If we keep track, there were 2 1's in A. Follow the same logic in your program. Remember we are dealing with 32 bit numbers in MIPS32, not 3 bit numbers.

Your program should take the value of A as input from the screen.  Run and read sample program example3_io.s to learn how to take input from the screen.

Example: Your spim session on glue might look like the following:

> spim
(spim) read “count_1.s”
(spim) run
Enter A:    13

Number of 1s in A = 3
(spim)

When debugging your program, you may find it helpful to use spim to step through the program instruction by instruction, examine the values of registers during execution and set breakpoints.  These are very easy to do -- use the commands in Section 1.2.1 of the MIPS32  simulator manual posted on elms to learn to do these tasks. Try them out on your program.

Each group of two students should upload to elms the following only once for Homework 1. I have specified this as a group assignment on elms, and have allowed students to self-signup for groups online on elms. There should be only one submission per group.

 

·       The .s file (MIPS32 assembly program) you wrote.

·       Cut-and-paste of a spim session of your program running for A = 13.  To do so, you could cut and paste a transcript of the session into your favourite editor, eg. Emacs or vi, and then upload it.

·       Cut-and-paste of another spim session of your program running for A = -47.

 


 

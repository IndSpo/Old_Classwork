# 
# Author: India Ervin
# Date: Dec 3 2018
# Filename: <India_Ervin_Homework2.asm>
# Assignment: Homework 2
#

	.data		# the variables used

str1:  .asciiz "Do you want to add, subtract, multiply, or exit\n"      # First question
str2:  .asciiz "Choose: add (a), subtract(s), multiply(m) or exit(x)\n" # Response choices
str3:  .asciiz	"a"
str4:  .asciiz "s"
str5:  .asciiz "m"
str6:  .asciiz "x"		# Answer
str7:  .asciiz "\nWould you like to do another problem?\n"	            # Try again
lnbrk:  .asciiz "Your answer is: "    	# my answer is	


	.text		# instructions start here

_start:

 	
	la $a0, str3
	la $a1, str4
	la $a2, str5
	la $a3, str6		# answers


_prtstr1:
	li $v0, 4		# loading "first question" String
	la $a0, str1		# placement of "first question" string
	syscall		# print 

_prtstr2:    
	li $v0, 4		# loading "second question" String
	la $a0, str2		# placement of "second question " String
	syscall		# print
	
_response:     li $v0, 8		# read answers
	syscall
					
_answer: 		
	beq  $v0, $a0, B	# conditions to compare their response to each possible answer
	beq  $v0, $a1, C
	beq  $v0, $a2, D
	beq  $v0, $a3, E	 			
 
			
B:	
	li  $v0, 5		# the addition method
	syscall		# load and print first value
	
	li  $v0, 5		# load and print second value
	syscall
	
	add $t0, $v0, $v0	# add loaded value
	
	li $v0, 4		# load and print "Your Answer Is"
	la $a0, lnbrk		
	syscall
	
	li $v0, 1		# load and print sum
	move $a0, $t0
	syscall
						
	li $v0, 4		# load and print str7
	la $a0, str7		
	syscall
	j _response		# jump back to response
			   			   		
			
C: 	
	li  $v0, 5		# the subtraction method
	syscall		# load and print first value
	
	li  $v0, 5		# load and print second value
	syscall
	
	sub $t0, $v0, $v0	# subtract loaded value
	
	li $v0, 4		# load and print "Your Answer Is"
	la $a0, lnbrk		
	syscall
	
	li $v0, 1		# load and print difference
	move $a0, $t0
	syscall
						
	li $v0, 4		# load and print str7
	la $a0, str7		
	syscall
	j _response		# jump back to response
			


D: 	
	li  $v0, 5		# the multiplication method
	syscall		# load and print first value
	
	li  $v0, 5		# load and print second value
	syscall
	
	mul $t0, $v0, $v0	# add loaded value
	
	li $v0, 4		#load and print "Your Answer Is"
	la $a0, lnbrk		
	syscall
	
	li $v0, 1		# load and print product
	move $a0, $t0
	syscall
						
	li $v0, 4		# load and print str7
	la $a0, str7		
	syscall
	j _response		# jump back to response	
	
E: 	
	li $v0, 10		# terminate program
	syscall	
	

	 					 						 					 					


		

	
	

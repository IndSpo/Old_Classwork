# 
# Author: India Ervin
# Date: Nov 3 2018
# Filename: <myassemblefile.asm>
# Assignment: Homework 1
#

	.data		# the variables used

var1:   .word 525		#the first add value
var2:   .word 100   		# the second add value
var3:   .word 1521		# the first subtract value
var4:   .word 3245 		# the second subtract value 

str1:  .asciiz "My Addition = "	#the sum
str2:  .asciiz "My Subtraction = "	#the diference 
lnbrk:  .asciiz "\n"		# line break/new line

	.text		# instructions start here

_start:
_add:			# addtion starts here
	lw $t0, var1		# placement of first of addition value
	lw $t1, var2		# placement of second addition value
	add $t2, $t1, $t0	# placement of sum

_prtstr1:
	li $v0, 4		# loading "My addition=" String
	la $a0, str1		# placement of "My Addition= "
	syscall		# print 
	
_sum: 			# printing sum
	li $v0, 1		# loading for sum
	move $a0, $t2		# places sum from temp register
	syscall		# print

_linbrk:			#line break
	li $v0, 4		# loading for an empty string (line break)
	la $a0, lnbrk		# the line break
	syscall		# print
	
_subt:			# subtraction starts here
	lw $t0, var3		# placement of first subtraction value
	lw $t1, var4		# placement of second subtraction value
	sub $t2, $t0, $t1	# placement of difference

_prtstr2:    
	li $v0, 4		# loading "My Subtraction= " String
	la $a0, str2		# placement of "My Subtraction= " String
	syscall		# print

_diff:			# printing difference
	li $v0, 1		# loading for difference
	move $a0, $t2		# places difference from temp register
	syscall		# print
_linbrk2: 	
	li $v0, 4		# loading for an empty string (line break)
	la $a0, lnbrk		# the line break
	syscall		# print
	

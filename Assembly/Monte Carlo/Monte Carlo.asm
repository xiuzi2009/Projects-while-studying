	.text
	.globl main
main:	# get the time
	li	$v0, 30		# get time in milliseconds (as a 64-bit value)
	syscall

	move	$t0, $a0	# save the lower 32-bits of time

	# seed the random generator (just once)
	li	$a0, 1		# random generator id (will be used later)
	move 	$a1, $t0	# seed from time
	li	$v0, 40		# seed random number generator syscall
	syscall

	la     $t0, toss
	move 	$t1, $0		# init $t1 = 0
	
L1:	bge 	$t1, 3, exit	# check loop condition
	lw	$t2, 0($t0)	# load # of tosses
############ begin your code ################################
# current code will just print out 3 random numbers generated
# $f0 has the random number
	move $t3,$0		#counter=0 
	li	$a0, 1
	li 	$v0, 43
	
	lwc1 $f7,number4	#$f7=4.0
	lwc1 $f4,number1 	#$f4=1.0
	lwc1 $f5,zero        #$f5=0.0
	mov.s $f6,$f5
	
L2:	#f1= X^2  f2= Y^2 f3=x^2+y^2 f4==1.0  f5=float count f6= float total count
	bge 	$t3,$t2,calcu   # if tosses finished ,caculate result 
       jal tossing		#Get a toss range(-1,1)
	mul.s $f1,$f0,$f0 	#x^2=$f1=random
	jal tossing		    #Get a toss range(-1,1)
	mul.s $f2,$f0,$f0 	#y^2=f2=random
	add.s $f3,$f1,$f2	# distance_squared = x*x + y*y
	 c.le.s $f3,$f4   # distance_squared<=1?
	 bc1f skipadd
	 add.s $f5,$f5,$f4 #Ture: Fcount=Fcount+1
skipadd: 
	 add.s $f6,$f6,$f4 #Ftotalcount++
	 addi $t3,$t3,1	#counter++
	 j L2
tossing:
	li	$a0, 1
	li 	$v0, 43
	syscall	#get random float number to  $f0
	li $a1, 2	# range int [0,1]
	li $v0,42	#get int random num
	syscall
	beq $a0,$zero,positive # if$a0==0, then set $f0 to negetive random number 

	sub.s $f0,$f0,$f4	 	 
positive:
	jr $ra
	
calcu:
	
	mul.s $f5,$f5,$f7
	div.s $f1,$f5,$f6  #pi_estimate = 4*number_in_circle/((float) number_of_tosses)

############ end your code ###################################
	mov.s  	$f12, $f1 	# move result to print argument
	li   	$v0, 2  	# 2 = print float, 3 = print double
	syscall			# system call for print result
	addi	$a0, $0, 0xA	# ascii code for LF
	addi 	$v0, $0, 0xB	# syscall 11
	syscall
	addi	$t1, $t1, 1	# increment $t1
	add	$t0, $t0, 4	# adjust index
	j	L1		# iterate outer loop
exit:	li   	$v0, 10		# system call for exit
	syscall			# we are out of here


	.data
zero:	.float	0.0
number1: .float 1.0
number4: .float 4.0
toss:	.word 100, 1000, 10000

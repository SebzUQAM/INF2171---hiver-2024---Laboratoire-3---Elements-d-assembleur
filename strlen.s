.eqv printint, 1
.eqv printchar, 11
.eqv read, 12
.eqv exit, 10

	li s0, 0
	li s1, '.'
	
loop01:
	li, a7, read
	ecall
	
	beq a0, s1, endloop01
	
	addi s0, s0, 1
	j loop01
	
endloop01:

	li a7, printchar
	li a0, 10
	ecall
	
	li a7, printint
	mv a0, s0
	ecall
	
	li a7, exit
	ecall
	
	
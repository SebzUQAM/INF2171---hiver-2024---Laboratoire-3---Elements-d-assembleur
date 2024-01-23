.eqv printInt, 1
.eqv printChar, 11
.eqv read, 5
.eqv exit, 10

	li a7, read
	ecall
	
	li s1, 46
	ble a0, s1, jumpError
	li a7, printChar
	li a0, 'E'
	ecall
	li a0, 'R'
	ecall
	li a0, 'R'
	ecall
	li a0, 'O'
	ecall
	li a0, 'R'
	ecall
	j end
jumpError:
	
	mv s0, a0
	
	li a7, printChar
	li a0, 10
	ecall
	
	li s1, 0
	li s2, 1
	
loop:
	li a7, printInt
	mv a0, s2
	ecall
	
	addi s0, s0, -1
	
	blez s0, end
	add s3, s1, s2
	
	mv s1, s2
	mv s2, s3
	
	
	li a7, printChar
	li a0, 10
	ecall
	j loop
	
end:
	
	li a7, exit
	ecall
	
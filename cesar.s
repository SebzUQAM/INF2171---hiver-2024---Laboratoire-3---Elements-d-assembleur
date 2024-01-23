.eqv printint, 1
.eqv printchar, 11
.eqv readint, 5
.eqv readchar, 12
.eqv exit, 10

	li s0, 'A'
	li s1, 'Z'
	
	li a7, readint
	ecall
	mv s2, a0
	
loop:
	li a7, readchar
	ecall
	
	blt a0, s0 end
	bgt a0, s1 end
	
	add a0, a0, s2
	
loopA:
	bge a0, s0, loopZ
	addi a0, a0, 26
	j loopA
	
loopZ:
	ble a0, s1, print
	addi a0, a0, -26
	j loopZ
	
print:
	li a7, printchar
	ecall
	j loop
	
end:
	li a7, exit
	ecall
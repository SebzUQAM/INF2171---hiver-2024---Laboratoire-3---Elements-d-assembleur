.eqv print, 1
.eqv read, 5
.eqv exit, 10

	li a7, read
	ecall

	mv s0, a0

	ecall
	mv s1, a0
	ble s0,s1, saut01
	mv s1, s0
	mv s0, a0
saut01:

	ecall

	ble s1,a0 set_s1
	bge s0,a0 set_s0
	j resultat
	
set_s1:
	mv a0, s1
	j resultat
set_s0:
	mv a0, s0

resultat:
	li a7, print
	ecall
	
	li a7, exit
	ecall
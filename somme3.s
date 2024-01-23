.eqv print, 1
.eqv read, 5
.eqv exit, 10

li a7, read
ecall
mv s0, a0

ecall
add s0, s0, a0

ecall
add a0, s0, a0
li a7, print
ecall

li a7, exit
ecall
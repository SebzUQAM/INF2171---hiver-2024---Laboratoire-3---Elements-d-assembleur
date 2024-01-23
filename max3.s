.eqv print, 1
.eqv read, 5
.eqv exit, 10

li a7, read
ecall
mv s0, a0

ecall
bgt s0, a0, plusgrand01
mv s0, a0
plusgrand01:

ecall
bgt s0, a0, plusgrand02
mv s0, a0
plusgrand02:

li a7, print
mv a0, s0
ecall

li a7, exit
ecall
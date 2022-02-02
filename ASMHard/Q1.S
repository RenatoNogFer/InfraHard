	.globl test
test:
	LDUR X9, [X0, #0] // a
	LDUR X10, [X1, #0] // b
	STUR X9, [X2, #0]
	LDUR X11, [X2, #0] // m
	SUB X12, X10, X11
	CBNZ X12, else // if b - m != 0 -> b != m
	SUB X11, X10, X9 // m = b - a
	B exit

else:
	SUB X11, X9, X10 // m = a - b

exit:
	ADD X0, X11, XZR
	br X30

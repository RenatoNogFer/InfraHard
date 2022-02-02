	.globl test
test:
	LDUR X9, [X0, #0] // a
	LDUR X10, [X1, #0] // b
	LDUR X11, [X2, #0] // c
	LDUR X12, [X3, #0] // x
	ADD X12, XZR, XZR
	SUBS X13, X9, XZR
	B.LT exit
	SUBS X13, X10, #32
	B.GT exit
	SUBS X13, X11, #25
	B.LE exit
	ADD X12, X12, #1
	B exit


exit:
	ADD X0, X12, XZR
	br X30
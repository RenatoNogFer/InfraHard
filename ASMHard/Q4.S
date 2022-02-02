    .globl test
test:
    LDUR X9, [X0, #0]
    ADD X10, XZR, XZR
    SUB X10, X10, #1 
    EOR X11, X9, X10
    ADD X0, X11, XZR
    br X30

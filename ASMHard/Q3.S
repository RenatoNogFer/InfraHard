    .globl test

test:
    LDUR X9, [X0, #0]
    LDUR X10, [X1, #0]
    ADD X11, XZR, XZR
    ADD X12, XZR, XZR
    ADD X13, XZR, XZR

    SUB X11, X11, #1

make_constants:
    ADD X12, X12, #4095
    ADD X13, X13, #4095

    LSL X12, X12, #12  
    LSL X13, X13, #44

    EOR X13, X13, X11 

get_and_change:
    AND X12, X9, X12
    AND X13, X10, X13

    LSL X12, X12, #32
    ORR X13, X13, X12

exit:
    ADD X0, XZR, X13
    br X30
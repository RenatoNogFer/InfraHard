    .globl test

test:
    LDUR X9, [X0, #0]
    ADD X10, XZR, XZR
    ADD X11, XZR, XZR
    ADD X12, XZR, XZR
    ADD X13, XZR, XZR
    ADD X14, XZR, XZR
    ADD X1, XZR, XZR
    ADD X1, X1, #1
    ADD X10, X10, #10

get_digit:
    UDIV X11, X9, X10  
    MUL X11, X11, X10  
    SUB X12, X9, X11  
    MOV X16, X30
    BL fact
    MOV X30, X16
    ADD X14, X14, X13
    UDIV X9, X9, X10
    CBZ X9, exit
    B get_digit

fact:
    SUB SP, SP, #16
    STUR LR, [SP, #8]
    STUR X12, [SP, #0]
    SUBS XZR, X12, #1
    B.GE L1
    ADD X13, XZR, X1
    ADD SP, SP, #16
    BR LR

L1:
    SUB X12, X12, #1
    BL fact
    LDUR X12, [SP, #0]
    LDUR LR, [SP, #8]
    ADD SP, SP, #16
    MUL X13, X12, X13
    BR LR

exit:
    ADD X0, X14, XZR
    br X30
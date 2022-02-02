    .globl test
test:
    LDUR X12, [X0, #0]

loop:
    SUBS X13, X12, XZR
    B.LE exit
    SUB X12, X12, #1
    B loop

exit:
    br X30

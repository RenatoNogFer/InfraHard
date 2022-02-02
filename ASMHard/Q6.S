    .globl test
test:
    ADD X10, XZR, XZR
    ADD X12, XZR, XZR
    
strget:
    LDRSB X11, [X0, X10] 
    ADD X10, X10, #1
    CBZ X11, exit

    a_check:
        CMP X11, #97
        B.NE e_check
        ADD X12, X12, #1
        B strget

    e_check:
        CMP X11, #101
        B.NE i_check
        ADD X12, X12, #1
        B strget
    
    i_check:
        CMP X11, #105
        B.NE o_check
        ADD X12, X12, #1
        B strget

    o_check:
        CMP X11, #111
        B.NE u_check  
        ADD X12, X12, #1
        B strget

    u_check:
        CMP X11, #117
        B.NE strget
        ADD X12, X12, #1
        B strget
   

exit:
    ADD X0, X12, XZR
    br X30
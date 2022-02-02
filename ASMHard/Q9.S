    .globl test

test:
    ADD X10, XZR, XZR
    ADD X11, XZR, XZR
    ADD X12, XZR, XZR
    ADD X13, XZR, XZR
    ADD X14, XZR, XZR
    ADD X15, XZR, XZR
    MOV X2, #8
    MOV X8, #16
    SUB SP, SP, #208
    STUR X11, [SP, #0]
    STUR X11, [SP, #8]
    STUR X11, [SP, #16]
    STUR X11, [SP, #24]
    STUR X11, [SP, #32]
    STUR X11, [SP, #40]
    STUR X11, [SP, #48]
    STUR X11, [SP, #56]
    STUR X11, [SP, #64]
    STUR X11, [SP, #72]
    STUR X11, [SP, #80]
    STUR X11, [SP, #88]
    STUR X11, [SP, #96]
    STUR X11, [SP, #104]
    STUR X11, [SP, #112]
    STUR X11, [SP, #120]
    STUR X11, [SP, #128]
    STUR X11, [SP, #136]
    STUR X11, [SP, #144]
    STUR X11, [SP, #152]
    STUR X11, [SP, #160]
    STUR X11, [SP, #168]
    STUR X11, [SP, #176]
    STUR X11, [SP, #184]
    STUR X11, [SP, #192]
    STUR X11, [SP, #200]
    STUR X11, [SP, #208]

count_letters:
    LDRSB X9, [X0, X10]
    ADD X10, X10, #1
    CBZ X9, make_word
    SUB X13, X9, #97
    MUL X13, X13, X2
    ADD SP, SP, X13
    LDUR X15, [SP, #0]
    ADD X15, X15, #1
    STUR X15, [SP, #0]
    SUB SP, SP, X13
    B count_letters

make_word:
    LDRSB X11, [X1, X12]
    ADD X12, X12, #1
    CBZ X11, exit
    SUB X13, X11, #97
    MUL X13, X13, X2
    ADD SP, SP, X13
    LDUR X14, [SP, #0]
    SUB SP, SP, X13
    SUBS XZR, X8, X14
    B.GT change_ans
    B make_word

change_ans:
    MOV X8, X14
    B make_word    

exit:
    ADD SP, SP, #208
    ADD X0, XZR, X8
    br X30
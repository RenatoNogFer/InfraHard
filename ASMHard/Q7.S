    .globl test
test:
    ADD X10, XZR, XZR 
    ADD X11, XZR, XZR
    ADD X12, XZR, XZR
    ADD X13, XZR, XZR
    
player1str:
    LDRSB X9, [X0, X10] 
    ADD X10, X10, #1
    CBZ X9, player2str
    a_check:
        CMP X9, #65
        B.NE b_check
        ADD X12, X12, #1
        B player1str

    b_check:
        CMP X9, #66
        B.NE c_check
        ADD X12, X12, #3
        B player1str

    c_check:
        CMP X9, #67
        B.NE d_check
        ADD X12, X12, #3
        B player1str

    d_check:
        CMP X9, #68
        B.NE e_check
        ADD X12, X12, #2
        B player1str

    e_check:
        CMP X9, #69
        B.NE f_check
        ADD X12, X12, #1
        B player1str

    f_check:
        CMP X9, #70
        B.NE g_check
        ADD X12, X12, #4
        B player1str

    g_check:
        CMP X9, #71
        B.NE h_check
        ADD X12, X12, #2
        B player1str

    h_check:
        CMP X9, #72
        B.NE i_check
        ADD X12, X12, #4
        B player1str

    i_check:
        CMP X9, #73
        B.NE j_check
        ADD X12, X12, #1
        B player1str

    j_check:
        CMP X9, #74
        B.NE k_check
        ADD X12, X12, #8
        B player1str

    k_check:
        CMP X9, #75
        B.NE l_check
        ADD X12, X12, #5
        B player1str

    l_check:
        CMP X9, #76
        B.NE m_check
        ADD X12, X12, #8
        B player1str

    m_check:
        CMP X9, #77
        B.NE n_check
        ADD X12, X12, #3
        B player1str

    n_check:
        CMP X9, #78
        B.NE o_check
        ADD X12, X12, #3
        B player1str

    o_check:
        CMP X9, #79
        B.NE p_check
        ADD X12, X12, #1
        B player1str

    p_check:
        CMP X9, #80
        B.NE q_check
        ADD X12, X12, #3
        B player1str

    q_check:
        CMP X9, #81
        B.NE r_check
        ADD X12, X12, #10
        B player1str

    r_check:
        CMP X9, #82
        B.NE s_check
        ADD X12, X12, #5
        B player1str
        
    s_check:
        CMP X9, #83
        B.NE t_check
        ADD X12, X12, #5
        B player1str

    t_check:
        CMP X9, #84
        B.NE u_check
        ADD X12, X12, #2
        B player1str

    u_check:
        CMP X9, #85
        B.NE v_check
        ADD X12, X12, #1
        B player1str

    v_check:
        CMP X9, #86
        B.NE w_check
        ADD X12, X12, #4
        B player1str

    w_check:
        CMP X9, #87
        B.NE x_check
        ADD X12, X12, #4
        B player1str

    x_check:
        CMP X9, #88
        B.NE y_check
        ADD X12, X12, #8
        B player1str

    y_check:
        CMP X9, #89
        B.NE z_check
        ADD X12, X12, #4
        B player1str

    z_check:
        CMP X9, #90
        B.NE player1str
        ADD X12, X12, #10
        B player1str


player2str:
    LDRSB X9, [X1, X11]
    ADD X11, X11, #1
    CBZ X9, winner_check

    a_check_B:
        CMP X9, #65
        B.NE b_check_B
        ADD X13, X13, #1
        B player2str

    b_check_B:
        CMP X9, #66
        B.NE c_check_B
        ADD X13, X13, #3
        B player2str

    c_check_B:
        CMP X9, #67
        B.NE d_check_B
        ADD X13, X13, #3
        B player2str

    d_check_B:
        CMP X9, #68
        B.NE e_check_B
        ADD X13, X13, #2
        B player2str

    e_check_B:
        CMP X9, #69
        B.NE f_check_B
        ADD X13, X13, #1
        B player2str

    f_check_B:
        CMP X9, #70
        B.NE g_check_B
        ADD X13, X13, #4
        B player2str

    g_check_B:
        CMP X9, #71
        B.NE h_check_B
        ADD X13, X13, #2
        B player2str

    h_check_B:
        CMP X9, #72
        B.NE i_check_B
        ADD X13, X13, #4
        B player2str

    i_check_B:
        CMP X9, #73
        B.NE j_check_B
        ADD X13, X13, #1
        B player2str

    j_check_B:
        CMP X9, #74
        B.NE k_check_B
        ADD X13, X13, #8
        B player2str

    k_check_B:
        CMP X9, #75
        B.NE l_check_B
        ADD X13, X13, #5
        B player2str

    l_check_B:
        CMP X9, #76
        B.NE m_check_B
        ADD X13, X13, #8
        B player2str

    m_check_B:
        CMP X9, #77
        B.NE n_check_B
        ADD X13, X13, #3
        B player2str

    n_check_B:
        CMP X9, #78
        B.NE o_check_B
        ADD X13, X13, #3
        B player2str

    o_check_B:
        CMP X9, #79
        B.NE p_check_B
        ADD X13, X13, #1
        B player2str

    p_check_B:
        CMP X9, #80
        B.NE q_check_B
        ADD X13, X13, #3
        B player2str

    q_check_B:
        CMP X9, #81
        B.NE r_check_B
        ADD X13, X13, #10
        B player2str

    r_check_B:
        CMP X9, #82
        B.NE s_check_B
        ADD X13, X13, #5
        B player2str
        
    s_check_B:
        CMP X9, #83
        B.NE t_check_B
        ADD X13, X13, #5
        B player2str

    t_check_B:
        CMP X9, #84
        B.NE u_check_B
        ADD X13, X13, #2
        B player2str

    u_check_B:
        CMP X9, #85
        B.NE v_check_B
        ADD X13, X13, #1
        B player2str

    v_check_B:
        CMP X9, #86
        B.NE w_check_B
        ADD X13, X13, #4
        B player2str

    w_check_B:
        CMP X9, #87
        B.NE x_check_B
        ADD X13, X13, #4
        B player2str

    x_check_B:
        CMP X9, #88
        B.NE y_check_B
        ADD X13, X13, #8
        B player2str

    y_check_B:
        CMP X9, #89
        B.NE z_check_B
        ADD X13, X13, #4
        B player2str

    z_check_B:
        CMP X9, #90
        B.NE player2str
        ADD X13, X13, #10
        B player2str


winner_check:
    SUBS X14, X12, X13
    B.EQ draw
    B.GT player1_win
    B.LT player2_win
    B exit

player1_win:
    ADD X0, XZR, XZR
    ADD X0, X0, #65
    B exit

player2_win:
    ADD X0, XZR, XZR
    ADD X0, X0, #66
    B exit

draw:
    ADD X0, XZR, XZR
    ADD X0, X0, #69
    B exit

exit:
    br X30
decode():                             // @decode()
        sub     sp, sp, #48             // =48
        adrp    x8, .L_ZZ6decodevE8password
        add     x8, x8, :lo12:.L_ZZ6decodevE8password
        ldur    q0, [x8, #30]
        ldp     q2, q1, [x8]
        mov     x8, sp
        mov     w9, #33
        stur    q0, [sp, #30]
        stp     q2, q1, [sp]
.LBB0_1:                        // =>This Inner Loop Header: Depth=1
        ldrb    w10, [x8]       // load value of pointer x8 into w10
        eor     w10, w10, w9    // w10 = w10 ^ w9 (w9 = 33)
        sub     w10, w10, #21   // w10 -= 21
        strb    w10, [x8], #1   // store w10 into x8, and increment x8  
        b       .LBB0_1
.L_ZZ6decodevE8password:
        .asciz  "leno{yZB[U~HEY[~UKQ~YWH~L[P[LO[~wli~WOO[IVFU\\"
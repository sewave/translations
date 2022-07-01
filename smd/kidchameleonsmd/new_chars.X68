    ORG    $100900
START:                  ; first instruction of program

* Put program code here
    cmp.b $00000020.w, D6
    bne.b .no_space
    move.b #$6D, D6
.no_space
    cmpi.w #$0041, D6
    bcc.s .no_special
    add.w #$FFBF,D6
    rts
.no_special
    subi.b #$41,D6
    rts
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

;length = length (original, not shifted)
;source = source addr (not shifted)
;dest = destination addr
;x = %001 if VRAM, %011 if CRAM, %101 if VSRAM
    ORG    $11A000

START:                  ; first instruction of program
	    move.w #$8F02, ($C00004)  ; VDP Register #15, Increment by 2
	    move.w #$8174, ($C00004)  ; VDP Register #1, Enable DMA
	    JSR $920C
		move.w	#$9400+((($0200)&$FF00)>>9),($C00004).l
		move.w	#$9300+((($0200)&$FF)>>1),($C00004).l
		move.w	#$9600+((($11A200>>1)&$FF00)>>8),($C00004).l
		move.w	#$9500+(($11A200>>1)&$FF),($C00004).l
		move.w	#$9700+(((($11A200>>1)&$FF0000)>>16)&$7F),($C00004).l
        move.l #$40000080+(($1220&$3FFF)<<16)+(($1220&$C000)>>14),($C00004).l
        ;move.w #$8104, ($C00004)  ; VDP Register #1, Disable DMA
        RTS
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

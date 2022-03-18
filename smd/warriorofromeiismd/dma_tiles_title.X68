*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $F4C00
START:                  ; first instruction of program

* Put program code here
	 jsr $CA3BC
	 move.w #$8F02, ($C00004)  ; VDP Register #15, Increment by 2
	 move.w #$8174, ($C00004)  ; VDP Register #1, Enable DMA
	 move.w	#$9400+((($0400)&$FF00)>>9),($C00004).l
	 move.w	#$9300+((($0400)&$FF)>>1),($C00004).l
	 move.w	#$9600+((($F5000>>1)&$FF00)>>8),($C00004).l
	 move.w	#$9500+(($F5000>>1)&$FF),($C00004).l
	 move.w	#$9700+(((($F5000>>1)&$FF0000)>>16)&$7F),($C00004).l
     move.l #$40000080+(($8FE0&$3FFF)<<16)+(($8FE0&$C000)>>14),($C00004).l
	 rts
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

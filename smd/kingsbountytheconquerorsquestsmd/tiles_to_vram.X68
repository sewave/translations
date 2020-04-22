;length = length (original, not shifted)
;source = source addr (not shifted)
;dest = destination addr
    ORG    $0007FE00

START:                  ; first instruction of program
     ;A0 already points to $C00004
	 ;move.w #$8F02, ($C00004)  ; VDP Register #15, Increment by 2
	 ;move.w #$8174, ($C00004)  ; VDP Register #1, Enable DMA
	 move.w	#$9400+((($00C0)&$FF00)>>9),($C00004).l
	 move.w	#$9300+((($00C0)&$FF)>>1),($C00004).l
	 move.w	#$9600+((($7FC00>>1)&$FF00)>>8),($C00004).l
	 move.w	#$9500+(($7FC00>>1)&$FF),($C00004).l
	 move.w	#$9700+(((($7FC00>>1)&$FF0000)>>16)&$7F),($C00004).l
     move.l #$40000080+(($F760&$3FFF)<<16)+(($F760&$C000)>>14),($C00004).l
     
     move.w	#$9400+((($0080)&$FF00)>>9),($C00004).l
	 move.w	#$9300+((($0080)&$FF)>>1),($C00004).l
	 move.w	#$9600+((($7FD00>>1)&$FF00)>>8),($C00004).l
	 move.w	#$9500+(($7FD00>>1)&$FF),($C00004).l
	 move.w	#$9700+(((($7FD00>>1)&$FF0000)>>16)&$7F),($C00004).l
     move.l #$40000080+(($FB60&$3FFF)<<16)+(($FB60&$C000)>>14),($C00004).l
     ;move.w #$8104, ($C00004)  ; VDP Register #1, Disable DMA
     JMP $0001339E
     SIMHALT             ; halt simulator
    END    START        ; last line of source




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

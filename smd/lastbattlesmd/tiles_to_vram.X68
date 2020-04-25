;length = length (original, not shifted)
;source = source addr (not shifted)
;dest = destination addr
    ORG    $0007FC60

START:                  ; first instruction of program
	 ;move.w #$8F02, ($C00004)  ; VDP Register #15, Increment by 2
	 ;move.w #$8174, ($C00004)  ; VDP Register #1, Enable DMA
	 LEA $0002BBF0, A0
	 JSR $0000A496
	 move.w	#$9400+((($0340)&$FF00)>>9),($C00004).l
	 move.w	#$9300+((($0340)&$FF)>>1),($C00004).l
	 move.w	#$9600+((($7FCA0>>1)&$FF00)>>8),($C00004).l
	 move.w	#$9500+(($7FCA0>>1)&$FF),($C00004).l
	 move.w	#$9700+(((($7FCA0>>1)&$FF0000)>>16)&$7F),($C00004).l
     move.l #$40000080+(($F800&$3FFF)<<16)+(($F800&$C000)>>14),($C00004).l
     ;move.w #$8104, ($C00004)  ; VDP Register #1, Disable DMA
     RTS
     SIMHALT             ; halt simulator
    END    START        ; last line of source





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

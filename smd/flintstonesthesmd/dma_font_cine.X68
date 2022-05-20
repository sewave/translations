    ORG    $7FC00
START:                  ; first instruction of program

* Put program code here
     ;Code substitution
	 LEA $0002D280, A0
	 
	 ;Activate DMA
	 move.w #$8F02, ($C00004)  ; VDP Register #15, Increment by 2
	 move.w #$8174, ($C00004)  ; VDP Register #1, Enable DMA
	 
     ;Size high and low
	 move.w	#$9400+(((DMA_SIZE>>9)&$FF00)),($C00004).l
	 move.w	#$9300+(((DMA_SIZE>>1)&$FF)),($C00004).l
	 
	 ;Source 3 bytes
	 move.w	#$9600+(((DMA_SOURCE>>1)&$FF00)>>8),($C00004).l
	 move.w	#$9500+((DMA_SOURCE>>1)&$FF),($C00004).l
	 move.w	#$9700+((((DMA_SOURCE>>1)&$FF0000)>>16)&$7F),($C00004).l
	 
	 ;Destination 2 bytes
     move.l #$40000080+((DMA_DEST&$3FFF)<<16)+((DMA_DEST&$C000)>>14),($C00004).l
	 rts
    SIMHALT             ; halt simulator

* Put variables and constants here
DMA_SOURCE EQU $0007FE00
DMA_DEST EQU $AC00
DMA_SIZE EQU $0100
    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

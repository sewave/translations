    ORG    $00000000 ;This code needs no special org

* Put variables and constants here
VDP_CONTROL EQU $C00004
DMA_SOURCE EQU $001FF000
DMA_DEST EQU $93C0
DMA_SIZE EQU $0200
    
START:
	 ;Push all registers
	 MOVEM.l A6-A0/D7-D0, -(SP)

	 lea VDP_CONTROL, A0
	 
	 ;Wait for DMAs
.wait_dma
     move.w (A0), D0
	 andi.b #$02, D0
	 bne .wait_dma
	 
	 ;Activate DMA
	 move.w #$8F02, (A0)  ; VDP Register #15, Increment by 2
	 move.w #$8174, (A0)  ; VDP Register #1, Enable DMA
	 
     ;Size high and low
	 move.w #$9300+((DMA_SIZE>>1)&$FF),(A0)
     move.w #$9400+(((DMA_SIZE>>1)&$FF00)>>8),(A0)
	 
	 ;Source 3 bytes
	 move.w	#$9600+(((DMA_SOURCE>>1)&$FF00)>>8),(A0)
	 move.w	#$9500+((DMA_SOURCE>>1)&$FF),(A0)
	 move.w	#$9700+((((DMA_SOURCE>>1)&$FF0000)>>16)&$7F),(A0)
	 
	 ;Destination 2 bytes
     move.l #$40000080+((DMA_DEST&$3FFF)<<16)+((DMA_DEST&$C000)>>14),(A0)
     
    ;Restore all registers
     MOVEM.l (SP)+, D0-D7/A0-A6
     
     rts
    END    START        ; last line of source

















*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

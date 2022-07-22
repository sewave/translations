    ORG    $000FE500
START:                  ; first instruction of program

* Put program code here
     ;Substituted code
     JSR $256CC
 
	 ;Push all registers
	 MOVEM.l A6-A0/D7-D0, -(SP) 
	 
	 LEA VDP_CONTROL, A0
     LEA VDP_DATA, A1
	 
	 ;Wait for DMAs
.wait_dma
     move.w (A0), D0
	 andi.b #$02, D0
	 bne .wait_dma
	 
	 ;Set VRAM Increment to 2
     move.w #$8F02, (A0)
     
     ;Set VRAM Location to DEST_VRAM
     move.l #$40000000+((DEST_VRAM&$3FFF)<<16)+((DEST_VRAM&$C000)>>14),(A0)
     
     ;Load W_SIZE
     move.w  #(W_SIZE>>2)-1, D0
     
     ;Load SOURCE_68K
     lea SOURCE_68K, A2
     
.vramloop
     move.l (A2)+, (A1)
     DBRA.w D0, .vramloop
     
     ;Restore all registers
     MOVEM.l (SP)+, D0-D7/A0-A6
     
     rts
    SIMHALT             ; halt simulator

* Put variables and constants here
VDP_CONTROL EQU $C00004
VDP_DATA EQU $C00000
SOURCE_68K EQU $000FE800
DEST_VRAM EQU $D800
W_SIZE EQU $0300
    END    START        ; last line of source











*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

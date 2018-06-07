;hace 4 caracteres de 3? 3->4??
;inicializacion variables
A75A LDA $0041 ;INI_RUTINA
A75C ASL
A75D TAY
;Carga indice de cadena * 2

;Carga el puntero en 8-9
A75E LDA $AA3E,Y
A761 STA $0008
A763 LDA $AA3F,Y
A766 STA $0009

;Si 42 no es cero, no se pone a cero 771
A768 LDA $0042
A76A BNE $A76F
A76C STA $0771
A76F LDY $0771
A772 LDX #$00


A774 LDA ($08),Y
A776 LSR
A777 LSR
A778 STA $0772,X
;El primer caracter es dos veces shifteado a la derecha

A77B INX
A77C CPX #$40 ;Tamaño maximo de cadena?
A77E BEQ $A784
A780 CMP #$3F ;Si el valor es 3F, final de cadena
A782 BNE $A78A ;si no es final de cadena vamos a A78A

A784 STY $0771 ;Guardamos contador en 771
A787 JMP $A7C0 ;FINAL

;Control del indice Y
A78A TXA ;indice de escritura ????
A78B LSR
A78C LSR
A78D STA $0007 ;indice de escritura / 4 ? 
A78F TXA ;Indice X en A
A790 CLC
A791 SBC $0007 ;Le restamos lo que hay en 7 + 1 1-63?
A793 CLC
A794 ADC $0771 ;Le sumamos el indice anterior
A797 TAY ;Pasamos indice a Y

A798 TXA ;Cargamos el indice de escritura en A
A799 AND #$03  ;Conservamos los 2 ultimos bits
A79B STA $0001 ;Guardamos 2 ultimos bits

;Cargamos en 0 el primer caracter y en A el segundo
A79D LDA ($08),Y ;Cargamos valor cadena,y
A79F STA $0000  ;Guardamos en 00 valor cadena,y
A7A1 INY        ;incrementamos puntero lectura
A7A2 LDA ($08),Y ;Cargamos valor cadena,y

;Este bloque rota N veces los caracteres de 2 a 3
A7A4 DEC $0001 ;Decrementamos 01
A7A6 BMI $A7B1 ;Si 01 es negativo (Bit 7 a 1), vamos a A7B1
A7A8 LSR $0000 ;Rotamos $0, bit 1 a carry
A7AA ROR       ;Cargamos carry en A
A7AB LSR $0000 ;Rotamos $0, bit 1 a carry
A7AD ROR       ;Cargamos carry en A
A7AE JMP $A7A4 
A7B1 JMP $A776 ;Inicio de CONJUNTO

A7B4 LDA $0042
A7B6 AND #$3F
A7B8 BNE $A7C0 ;Si 0042 no es 3F, vamos a A7C0
A7BA LDA $001B ;si 1B tiene el último bit activo, volvemos al inicio
A7BC AND #$01
A7BE BEQ $A75A ;INI_RUTINA

;Finales?
A7C0 LDA $0042 ;Cargamos indice lectura
A7C2 AND #$3F ;Guardamos los 6 bits inferiores
A7C4 TAY
A7C5 LDA $0772,Y ;Cargamos el valor de la cadena
A7C8 CMP #$3B
A7CA BEQ $A7FD
A7CC CMP #$3C
A7CE BNE $A7FF
A7D0 LDA #$75
A7D2 BNE $A7FF
;Cargamos BB y despues lo incrementamos
A7D4 LDA $00BB
A7D6 INC $00BB
;Si BB es 0A, terminamos
A7D8 CMP #$0A
A7DA BNE $A7EB

;BB a 0
A7DC LDA #$00
A7DE STA $00BB

A7E0 LDA $0043 ;Sumamos $10 a $43 y conservamos $F0
A7E2 CLC
A7E3 ADC #$10
A7E5 AND #$F0
A7E7 STA $0043 ;Guardamos $43
A7E9 INC $0042 ;Incrementamos $42
A7EB RTS ;FIN

;Falta un trozo de codigo

;Gestion cadenas de mas de 256?
A7FF STA $0008
A801 CMP #$50
A803 BNE $A811
A805 LDA #$2E
A807 STA $03DF
A80A LDA #$4F
A80C JSR $C17F
A80F LDA $0008
A811 CMP #$3D
A813 BEQ $A7D4
A815 CMP #$3E
A817 BEQ $A7EC
A819 CMP #$3F
A81B BNE $A82C ;Continuamos
A81D LDA $00F5
A81F BPL $A82B ;Si el primer bit de F5 es 1, fin

;Incrementamos 009C ¿Linea? y ponemos a 0 BB, 42 y 43
A821 INC $009C
A823 LDA #$00
A825 STA $00BB
A827 STA $0043
A829 STA $0042
A82B RTS ;FIN

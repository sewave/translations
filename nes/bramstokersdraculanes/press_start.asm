;CODE AT AF00
  PHA
  TYA
  PHA

  LDA #$22
  STA PpuAddr_2006
  LDA #$CA
  STA PpuAddr_2006
  LDY #$00
  
  ;DO THE UPPER PART
  jsr print_strip
  
  LDA #$22
  STA PpuAddr_2006
  LDA #$EA
  STA PpuAddr_2006
  ;DO THE LOWER PART
  jsr print_strip
  
  PLA
  TAY
  PLA
  RTS
  
print_strip:
  LDX #$0B
print_tile:  
  LDA press_start, Y
  STA PpuData_2007
  INY
  DEX
  BNE print_tile
  RTS
  
press_start:
.byte $EE, $FB, $FD, $F1, $F3, $F4, $F1, $F2, $F3, $EF, $F2
.byte $F5, $FC, $FE, $F8, $FA, $F4, $F8, $F9, $FA, $F6, $F9
  

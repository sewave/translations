@echo off
set T_FILENAME="TR_Wrath of the Black Manta (USA) (Rev 1).nes"
set SCRIPTNAME="wrathoftheblackmantanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 210A0:70,211A0:70,217C0:20,21D70:10,219D0:20,21F10:60,25F40:90,26A80:20
pause

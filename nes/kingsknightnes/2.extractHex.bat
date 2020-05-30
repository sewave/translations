@echo off
set T_FILENAME="TR_King's Knight (U) [!].nes"
set SCRIPTNAME="kingsknightnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex EB80:20,EC20:10,E970:10,EB50:10,EBB0:10
pause

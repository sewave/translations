@echo off
set T_FILENAME="TR_Contra (U) [!].nes"
set SCRIPTNAME="contranes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

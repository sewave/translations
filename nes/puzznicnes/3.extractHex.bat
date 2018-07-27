@echo off
set T_FILENAME="TR_Puzznic (U) [!].nes"
set SCRIPTNAME="puzznicnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

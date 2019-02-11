@echo off
set T_FILENAME="TR_Bomberman II (U) [!].nes"
set SCRIPTNAME="bombermaniines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

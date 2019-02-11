@echo off
set T_FILENAME="TR_Battleship (U) [C][!].gbc"
set SCRIPTNAME="battleshipgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

@echo off
set T_FILENAME="TR_Battleship (U) [M][!].gb"
set SCRIPTNAME="battleshipgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

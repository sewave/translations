@echo off
set T_FILENAME="TR_Battleship (U) [!].gg"
set SCRIPTNAME="battleshipgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

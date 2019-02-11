@echo off
set T_FILENAME="TR_Battleship (U) [!].nes"
set SCRIPTNAME="battleshipnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C610:40
pause

@echo off
set T_FILENAME="TR_Battleship (U) [M][!].gb"
set S_FILENAME="Battleship (U) [M][!].gb"
set SCRIPTNAME="battleshipgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

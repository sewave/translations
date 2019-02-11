@echo off
set T_FILENAME="TR_Battleship (U) [C][!].gbc"
set S_FILENAME="Battleship (U) [C][!].gbc"
set SCRIPTNAME="battleshipgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

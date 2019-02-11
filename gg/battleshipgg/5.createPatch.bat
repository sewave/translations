@echo off
set T_FILENAME="TR_Battleship (U) [!].gg"
set S_FILENAME="Battleship (U) [!].gg"
set SCRIPTNAME="battleshipgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

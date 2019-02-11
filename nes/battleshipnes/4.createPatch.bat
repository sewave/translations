@echo off
set T_FILENAME="TR_Battleship (U) [!].nes"
set S_FILENAME="Battleship (U) [!].nes"
set SCRIPTNAME="battleshipnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

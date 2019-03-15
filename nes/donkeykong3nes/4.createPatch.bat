@echo off
set T_FILENAME="TR_Donkey Kong 3 (U) [!].nes"
set S_FILENAME="Donkey Kong 3 (U) [!].nes"
set SCRIPTNAME="donkeykong3nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

@echo off
set T_FILENAME="TR_Puzznic (U) [!].nes"
set S_FILENAME="Puzznic (U) [!].nes"
set SCRIPTNAME="puzznicnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

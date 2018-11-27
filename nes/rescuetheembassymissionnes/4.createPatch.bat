@echo off
set T_FILENAME="TR_Rescue - The Embassy Mission (U) [!].nes"
set S_FILENAME="Rescue - The Embassy Mission (U) [!].nes"
set SCRIPTNAME="rescuetheembassymissionnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

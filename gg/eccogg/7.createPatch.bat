@echo off
set T_FILENAME="TR_Ecco the Dolphin (U) [!].gg"
set S_FILENAME="Ecco the Dolphin (U) [!].gg"
set SCRIPTNAME="eccogg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

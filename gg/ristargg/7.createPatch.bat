@echo off
set T_FILENAME="TR_Ristar the Shooting Star (U) [!].gg"
set S_FILENAME="Ristar the Shooting Star (U) [!].gg"
set SCRIPTNAME="ristargg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

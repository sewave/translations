@echo off
set T_FILENAME="TR_Putt & Putter (U) [!].gg"
set S_FILENAME="Putt & Putter (U) [!].gg"
set SCRIPTNAME="puttputtergg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

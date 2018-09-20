@echo off
set T_FILENAME="TR_Devilish (U) [!].gg"
set S_FILENAME="Devilish (U) [!].gg"
set SCRIPTNAME="devilishgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

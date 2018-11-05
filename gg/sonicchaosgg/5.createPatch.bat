@echo off
set T_FILENAME="TR_Sonic Chaos (U) [!].gg"
set S_FILENAME="Sonic Chaos (U) [!].gg"
set SCRIPTNAME="sonicchaosgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

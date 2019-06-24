@echo off
set T_FILENAME="TR_Fighting Masters (U) [!].bin"
set S_FILENAME="Fighting Masters (U) [!].bin"
set SCRIPTNAME="fightingmasterssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

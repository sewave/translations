@echo off
set T_FILENAME="TR_Commando (U) [!].nes"
set S_FILENAME="Commando (U) [!].nes"
set SCRIPTNAME="commandones"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

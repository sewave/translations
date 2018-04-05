@echo off
set T_FILENAME="TR_Ninja Crusaders (U) [!].nes"
set S_FILENAME="Ninja Crusaders (U) [!].nes"
set SCRIPTNAME="ninjacrusaders"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

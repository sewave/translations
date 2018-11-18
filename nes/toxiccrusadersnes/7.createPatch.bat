@echo off
set T_FILENAME="TR_Toxic Crusaders (U) [!].nes"
set S_FILENAME="Toxic Crusaders (U) [!].nes"
set SCRIPTNAME="toxiccrusadersnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

@echo off
set T_FILENAME="TR_Toxic Crusaders (U) [!].bin"
set S_FILENAME="Toxic Crusaders (U) [!].bin"
set SCRIPTNAME="toxiccrusaderssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

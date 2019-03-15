@echo off
set T_FILENAME="TR_Gauntlet (UE) [!].sms"
set S_FILENAME="Gauntlet (UE) [!].sms"
set SCRIPTNAME="gauntletsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

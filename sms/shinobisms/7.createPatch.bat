@echo off
set T_FILENAME="TR_Shinobi (UE) [!].sms"
set S_FILENAME="Shinobi (UE) [!].sms"
set SCRIPTNAME="shinobisms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

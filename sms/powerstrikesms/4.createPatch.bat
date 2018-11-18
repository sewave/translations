@echo off
set T_FILENAME="TR_Power Strike (UE) [!].sms"
set S_FILENAME="Power Strike (UE) [!].sms"
set SCRIPTNAME="powerstrikesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

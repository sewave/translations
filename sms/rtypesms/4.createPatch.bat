@echo off
set T_FILENAME="TR_R-Type (UE) [!].sms"
set S_FILENAME="R-Type (UE) [!].sms"
set SCRIPTNAME="rtypesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

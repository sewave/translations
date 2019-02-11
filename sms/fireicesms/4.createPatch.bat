@echo off
set T_FILENAME="TR_Fire & Ice (B) [!].sms"
set S_FILENAME="Fire & Ice (B) [!].sms"
set SCRIPTNAME="fireicesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

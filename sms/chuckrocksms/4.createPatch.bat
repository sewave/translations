@echo off
set T_FILENAME="TR_Chuck Rock (E) [!].sms"
set S_FILENAME="Chuck Rock (E) [!].sms"
set SCRIPTNAME="chuckrocksms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

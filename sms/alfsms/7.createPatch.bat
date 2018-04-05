@echo off
set T_FILENAME="TR_ALF (U) [!].sms"
set S_FILENAME="ALF (U) [!].sms"
set SCRIPTNAME="alfsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

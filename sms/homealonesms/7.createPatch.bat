@echo off
set T_FILENAME="TR_Home Alone (U) [!].sms"
set S_FILENAME="Home Alone (U) [!].sms"
set SCRIPTNAME="homealonesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

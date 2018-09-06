@echo off
set T_FILENAME="TR_My Hero (UE) [!].sms"
set S_FILENAME="My Hero (UE) [!].sms"
set SCRIPTNAME="myherosms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

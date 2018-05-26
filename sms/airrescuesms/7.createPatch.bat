@echo off
set T_FILENAME="TR_Air Rescue (E) [!].sms"
set S_FILENAME="Air Rescue (E) [!].sms"
set SCRIPTNAME="airrescuesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

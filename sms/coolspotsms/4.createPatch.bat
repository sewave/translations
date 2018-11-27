@echo off
set T_FILENAME="TR_Cool Spot (E) [!].sms"
set S_FILENAME="Cool Spot (E) [!].sms"
set SCRIPTNAME="coolspotsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

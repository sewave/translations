@echo off
set T_FILENAME="TR_Superman (E) [!].sms"
set S_FILENAME="Superman (E) [!].sms"
set SCRIPTNAME="supermansms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

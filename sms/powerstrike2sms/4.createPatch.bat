@echo off
set T_FILENAME="TR_Power Strike 2 (E) [!].sms"
set S_FILENAME="Power Strike 2 (E) [!].sms"
set SCRIPTNAME="powerstrike2sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

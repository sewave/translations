@echo off
set T_FILENAME="TR_Forgotten Worlds (E) [!].sms"
set S_FILENAME="Forgotten Worlds (E) [!].sms"
set SCRIPTNAME="forgottenworldssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

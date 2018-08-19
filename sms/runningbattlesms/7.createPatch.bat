@echo off
set T_FILENAME="TR_Running Battle (E) [!].sms"
set S_FILENAME="Running Battle (E) [!].sms"
set SCRIPTNAME="runningbattlesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

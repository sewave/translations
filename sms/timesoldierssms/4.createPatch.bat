@echo off
set T_FILENAME="TR_Time Soldiers (USA, Europe).sms"
set S_FILENAME="Time Soldiers (USA, Europe).sms"
set SCRIPTNAME="timesoldierssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

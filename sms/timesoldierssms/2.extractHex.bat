@echo off
set T_FILENAME="TR_Time Soldiers (USA, Europe).sms"
set SCRIPTNAME="timesoldierssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

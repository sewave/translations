@echo off
set T_FILENAME="Time Soldiers (USA, Europe).sms"
set SCRIPTNAME="timesoldierssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

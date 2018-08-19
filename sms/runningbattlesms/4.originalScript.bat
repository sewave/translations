@echo off
set T_FILENAME="Running Battle (E) [!].sms"
set SCRIPTNAME="runningbattlesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

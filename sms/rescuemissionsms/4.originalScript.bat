@echo off
set T_FILENAME="Rescue Mission (UE) [!].sms"
set SCRIPTNAME="rescuemissionsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

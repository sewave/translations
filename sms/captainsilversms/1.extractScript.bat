@echo off
set T_FILENAME="Captain Silver (U) [!].sms"
set SCRIPTNAME="captainsilversms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

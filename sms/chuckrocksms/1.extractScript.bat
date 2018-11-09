@echo off
set T_FILENAME="Chuck Rock (E) [!].sms"
set SCRIPTNAME="chuckrocksms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

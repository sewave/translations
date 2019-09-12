@echo off
set T_FILENAME="Ghost House (UE) [!].sms"
set SCRIPTNAME="ghosthousesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

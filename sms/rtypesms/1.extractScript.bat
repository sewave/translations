@echo off
set T_FILENAME="R-Type (UE) [!].sms"
set SCRIPTNAME="rtypesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

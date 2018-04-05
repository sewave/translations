@echo off
set T_FILENAME="ALF (U) [!].sms"
set SCRIPTNAME="alfsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="Fire & Ice (B) [!].sms"
set SCRIPTNAME="fireicesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

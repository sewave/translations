@echo off
set T_FILENAME="Home Alone (U) [!].sms"
set SCRIPTNAME="homealonesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

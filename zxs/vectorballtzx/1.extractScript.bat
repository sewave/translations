@echo off
set T_FILENAME="Vector Ball.tzx"
set SCRIPTNAME="vectorballtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

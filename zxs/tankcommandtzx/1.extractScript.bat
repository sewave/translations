@echo off
set T_FILENAME="Tank Command.tzx"
set SCRIPTNAME="tankcommandtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

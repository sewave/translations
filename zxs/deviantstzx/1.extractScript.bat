@echo off
set T_FILENAME="Deviants.tzx"
set SCRIPTNAME="deviantstzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="Super Widget (U).smc"
set SCRIPTNAME="superwidgetsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="War Games (1983-84).col"
set SCRIPTNAME="wargamescol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

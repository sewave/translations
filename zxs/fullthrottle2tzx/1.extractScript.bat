@echo off
set T_FILENAME="Full Throttle 2.tzx"
set SCRIPTNAME="fullthrottle2tzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

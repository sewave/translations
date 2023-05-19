@echo off
set T_FILENAME="Quick Draw McGraw.tzx"
set SCRIPTNAME="quickdrawmcgrawtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="Joe Blade.tzx"
set SCRIPTNAME="joebladetzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

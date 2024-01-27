@echo off
set T_FILENAME="Blazing Thunder.tzx"
set SCRIPTNAME="blazingthundertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

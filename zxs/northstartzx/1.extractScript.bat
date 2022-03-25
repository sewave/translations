@echo off
set T_FILENAME="Northstar.tzx"
set SCRIPTNAME="northstartzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

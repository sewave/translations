@echo off
set T_FILENAME="Sector-90.tzx"
set SCRIPTNAME="sector90tzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

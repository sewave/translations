@echo off
set T_FILENAME="Rockman.tzx"
set SCRIPTNAME="rockmantzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

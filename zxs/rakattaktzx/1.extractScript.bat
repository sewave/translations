@echo off
set T_FILENAME="Rakattak.tzx"
set SCRIPTNAME="rakattaktzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

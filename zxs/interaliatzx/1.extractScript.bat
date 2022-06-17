@echo off
set T_FILENAME="Interalia.tzx"
set SCRIPTNAME="interaliatzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

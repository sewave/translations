@echo off
set T_FILENAME="Kosmos.tzx"
set SCRIPTNAME="kosmostzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

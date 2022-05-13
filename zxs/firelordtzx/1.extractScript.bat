@echo off
set T_FILENAME="Firelord.tzx"
set SCRIPTNAME="firelordtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

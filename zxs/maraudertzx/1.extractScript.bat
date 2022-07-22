@echo off
set T_FILENAME="Marauder.tzx"
set SCRIPTNAME="maraudertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="Plexar.tzx"
set SCRIPTNAME="plexartzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

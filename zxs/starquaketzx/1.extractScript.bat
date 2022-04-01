@echo off
set T_FILENAME="Starquake.tzx"
set SCRIPTNAME="starquaketzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

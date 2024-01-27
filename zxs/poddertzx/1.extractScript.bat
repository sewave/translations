@echo off
set T_FILENAME="Podder.tzx"
set SCRIPTNAME="poddertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

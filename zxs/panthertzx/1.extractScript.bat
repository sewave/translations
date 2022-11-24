@echo off
set T_FILENAME="Panther.tzx"
set SCRIPTNAME="panthertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

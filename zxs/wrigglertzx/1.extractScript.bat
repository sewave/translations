@echo off
set T_FILENAME="Wriggler.tzx"
set SCRIPTNAME="wrigglertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

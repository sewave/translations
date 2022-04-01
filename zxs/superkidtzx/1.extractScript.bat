@echo off
set T_FILENAME="Superkid.tzx"
set SCRIPTNAME="superkidtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

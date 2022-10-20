@echo off
set T_FILENAME="Chiller.tzx"
set SCRIPTNAME="chillertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

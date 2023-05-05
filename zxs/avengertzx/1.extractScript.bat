@echo off
set T_FILENAME="Avenger.tzx"
set SCRIPTNAME="avengertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

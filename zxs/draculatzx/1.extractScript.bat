@echo off
set T_FILENAME="DrAcula.tzx"
set SCRIPTNAME="draculatzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

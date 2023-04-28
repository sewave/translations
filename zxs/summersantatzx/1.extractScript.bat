@echo off
set T_FILENAME="Summer Santa.tzx"
set SCRIPTNAME="summersantatzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

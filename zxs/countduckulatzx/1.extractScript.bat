@echo off
set T_FILENAME="Count Duckula.tzx"
set SCRIPTNAME="countduckulatzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

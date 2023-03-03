@echo off
set T_FILENAME="Defcom.tzx"
set SCRIPTNAME="defcomtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

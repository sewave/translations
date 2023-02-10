@echo off
set T_FILENAME="Zub.tzx"
set SCRIPTNAME="zubtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="Zoot.tzx"
set SCRIPTNAME="zoottzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

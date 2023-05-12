@echo off
set T_FILENAME="SPACE7.TZX"
set SCRIPTNAME="space7tzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

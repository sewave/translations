@echo off
set T_FILENAME="BATTY.TZX"
set SCRIPTNAME="battytzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

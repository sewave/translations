@echo off
set T_FILENAME="Operation C (USA).gb"
set SCRIPTNAME="operationcgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

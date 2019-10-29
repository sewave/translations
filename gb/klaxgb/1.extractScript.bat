@echo off
set T_FILENAME="Klax (USA).gb"
set SCRIPTNAME="klaxgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

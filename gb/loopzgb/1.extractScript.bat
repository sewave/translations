@echo off
set T_FILENAME="Loopz (U).gb"
set SCRIPTNAME="loopzgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

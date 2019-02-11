@echo off
set T_FILENAME="Darkman (U).gb"
set SCRIPTNAME="darkmangb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="Puzznic (Japan).gb"
set SCRIPTNAME="puzznicgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

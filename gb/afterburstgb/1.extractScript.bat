@echo off
set T_FILENAME="After Burst (Japan).gb"
set SCRIPTNAME="afterburstgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

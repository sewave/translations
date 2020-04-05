@echo off
set T_FILENAME="Super Hunchback (U).gb"
set SCRIPTNAME="superhunchbackgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="Hugo 2 (Germany).gb"
set SCRIPTNAME="hugo2gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

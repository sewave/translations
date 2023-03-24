@echo off
set T_FILENAME="Wayne's World (USA).gb"
set SCRIPTNAME="waynesworldgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

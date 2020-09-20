@echo off
set T_FILENAME="Bubsy II (USA).gb"
set SCRIPTNAME="bubsyiigb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

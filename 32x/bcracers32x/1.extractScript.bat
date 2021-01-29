@echo off
set T_FILENAME="BC Racers (USA).32x"
set SCRIPTNAME="bcracers32x"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

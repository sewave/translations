@echo off
set T_FILENAME="Indivisible.nes"
set SCRIPTNAME="indivisiblenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

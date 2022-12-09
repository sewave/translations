@echo off
set T_FILENAME="Psycho Hopper.tzx"
set SCRIPTNAME="psychohoppertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

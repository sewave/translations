@echo off
set T_FILENAME="Worms (E).smc"
set SCRIPTNAME="wormssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

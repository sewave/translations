@echo off
set T_FILENAME="Cannon Fodder (E).smc"
set SCRIPTNAME="cannonfoddersfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

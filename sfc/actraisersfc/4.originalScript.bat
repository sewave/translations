@echo off
set T_FILENAME="ActRaiser (J) [T+ENG].smc"
set SCRIPTNAME="actraisersfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="Cool Spot (U) [!].smc"
set SCRIPTNAME="coolspotsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

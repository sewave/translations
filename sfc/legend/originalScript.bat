@echo off 
set T_FILENAME="Legend (U) (718).smc"
set SCRIPTNAME="legend"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 

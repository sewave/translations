@echo off 
set T_FILENAME="Legend (U) (718).smc"
set SCRIPTNAME="legend"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

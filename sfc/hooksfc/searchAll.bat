@echo off 
set T_FILENAME="Hook (U) (29252).smc"
set SCRIPTNAME="hooksfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

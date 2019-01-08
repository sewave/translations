@echo off
set T_FILENAME="Super James Pond (U).smc"
set SCRIPTNAME="superjamespondsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 FF "..\EngDict.txt"
pause

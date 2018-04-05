@echo off
set T_FILENAME="Final Fight (U).smc"
set SCRIPTNAME="finalfsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

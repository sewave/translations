@echo off
set T_FILENAME="Final Fight Guy (U).smc"
set SCRIPTNAME="finalfguysfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

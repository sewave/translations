@echo off
set T_FILENAME="Terminator, The (U).smc"
set SCRIPTNAME="terminatorsnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

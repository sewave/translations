@echo off
set T_FILENAME="Rush'n Attack (U) [!].nes"
set SCRIPTNAME="rushnattacknes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

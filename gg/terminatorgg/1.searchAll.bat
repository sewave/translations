@echo off
set T_FILENAME="Terminator, The (U) [!].gg"
set SCRIPTNAME="terminatorgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

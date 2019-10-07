@echo off
set T_FILENAME="Terminator 2 - Judgment Day (U) [!].smc"
set SCRIPTNAME="terminator2snes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause

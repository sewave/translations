@echo off
set T_FILENAME="Devilish (U) [!].gg"
set SCRIPTNAME="devilishgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Ecco the Dolphin (U) [!].gg"
set SCRIPTNAME="eccogg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 8 00 "..\EngDict.txt"
pause

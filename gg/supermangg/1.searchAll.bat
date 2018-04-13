@echo off
set T_FILENAME="Superman (U) [!].gg"
set SCRIPTNAME="supermangg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

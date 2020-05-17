@echo off
set T_FILENAME="Superman (U) [S][!].gb"
set SCRIPTNAME="supermangb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

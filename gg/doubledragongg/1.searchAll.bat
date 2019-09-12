@echo off
set T_FILENAME="Double Dragon (U) [!].gg"
set SCRIPTNAME="doubledragongg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

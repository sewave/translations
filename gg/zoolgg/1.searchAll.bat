@echo off
set T_FILENAME="Zool (U) [!].gg"
set SCRIPTNAME="zoolgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

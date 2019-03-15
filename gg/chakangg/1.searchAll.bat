@echo off
set T_FILENAME="Chakan (U) [!].gg"
set SCRIPTNAME="chakangg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 6 80 "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Ristar the Shooting Star (U) [!].gg"
set SCRIPTNAME="ristargg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

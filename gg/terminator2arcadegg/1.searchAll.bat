@echo off
set T_FILENAME="T2 - The Arcade Game (U) [!].gg"
set SCRIPTNAME="terminator2arcadegg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 8 FF "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Terminator 2 - Judgment Day (UE) [!].gb"
set SCRIPTNAME="terminator2gb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

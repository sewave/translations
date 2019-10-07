@echo off
set T_FILENAME="Terminator 2 - Judgment Day (UE) [!].bin"
set SCRIPTNAME="terminator2smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Gargoyles (U) [!].bin"
set SCRIPTNAME="gargoyles"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Super Chase H.Q. (UE) [!].gb"
set SCRIPTNAME="superchasehqgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause

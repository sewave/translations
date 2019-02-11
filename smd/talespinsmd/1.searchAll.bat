@echo off
set T_FILENAME="Tale Spin (UE) [!].bin"
set SCRIPTNAME="talespinsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

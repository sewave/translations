@echo off
set T_FILENAME="Jurassic Park (UE) [!].gg"
set SCRIPTNAME="jurassicparkgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

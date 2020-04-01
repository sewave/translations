@echo off
set T_FILENAME="Virtua Fighter 2 (UE) [!].gen"
set SCRIPTNAME="virtuafighter2smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

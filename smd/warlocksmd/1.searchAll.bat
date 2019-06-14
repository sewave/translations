@echo off
set T_FILENAME="Warlock (UE) [!].gen"
set SCRIPTNAME="warlocksmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

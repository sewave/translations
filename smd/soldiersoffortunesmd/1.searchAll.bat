@echo off
set T_FILENAME="Soldiers of Fortune (U) [c][!].gen"
set SCRIPTNAME="soldiersoffortunesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

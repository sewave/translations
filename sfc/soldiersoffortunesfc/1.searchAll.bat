@echo off
set T_FILENAME="Soldiers of Fortune (U) [!].smc"
set SCRIPTNAME="soldiersoffortunesfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

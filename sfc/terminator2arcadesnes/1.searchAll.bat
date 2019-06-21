@echo off
set T_FILENAME="T2 - The Arcade Game (U).smc"
set SCRIPTNAME="terminator2arcadesnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 8 00 "..\EngDict.txt"
pause

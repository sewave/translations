@echo off
set T_FILENAME="Fantasy Zone (Tengen) [!].nes"
set SCRIPTNAME="fantasyzonenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

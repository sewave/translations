@echo off
set T_FILENAME="Wonder Boy - The Dragon's Trap (E) [!].gg"
set SCRIPTNAME="wonderboythedragonstrapgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

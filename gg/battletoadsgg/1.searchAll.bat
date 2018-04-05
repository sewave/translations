@echo off
set T_FILENAME="Battletoads (U) [!].gg"
set SCRIPTNAME="battletoadsgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

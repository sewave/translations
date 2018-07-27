@echo off
set T_FILENAME="Puzznic (U) [!].nes"
set SCRIPTNAME="puzznicnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

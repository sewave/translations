@echo off
set T_FILENAME="Bubble Bobble (U) [!].nes"
set SCRIPTNAME="bubblebobblenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

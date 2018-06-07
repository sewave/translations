@echo off
set T_FILENAME="Bubble Bobble (U) [!].gg"
set SCRIPTNAME="bubblebobblegg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

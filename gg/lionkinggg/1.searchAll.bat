@echo off
set T_FILENAME="Lion King, The (E) [!].gg"
set SCRIPTNAME="lionkinggg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

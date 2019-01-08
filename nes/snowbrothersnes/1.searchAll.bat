@echo off
set T_FILENAME="Snow Brothers (U) [!].nes"
set SCRIPTNAME="snowbrothersnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 16 FA "..\EngDict.txt"
pause

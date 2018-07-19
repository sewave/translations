@echo off
set T_FILENAME="Gradius II (J) [!].nes"
set SCRIPTNAME="gradiusiines"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

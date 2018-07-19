@echo off
set T_FILENAME="Gradius (U) [!].nes"
set SCRIPTNAME="gradiusnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

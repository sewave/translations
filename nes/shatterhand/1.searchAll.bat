@echo off
set T_FILENAME="Shatterhand (U) [!].nes"
set SCRIPTNAME="shatterhand"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

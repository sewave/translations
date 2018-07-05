@echo off
set T_FILENAME="Super Mario Bros. (W) [!].nes"
set SCRIPTNAME="supermariobrosnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

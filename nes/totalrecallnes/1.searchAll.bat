@echo off
set T_FILENAME="Total Recall (U) [!].nes"
set SCRIPTNAME="totalrecallnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

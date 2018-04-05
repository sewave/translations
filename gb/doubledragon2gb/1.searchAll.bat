@echo off
set T_FILENAME="Double Dragon 2 (U) [!].gb"
set SCRIPTNAME="doubledragon2gb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 0 00 "..\EngDict.txt"
pause

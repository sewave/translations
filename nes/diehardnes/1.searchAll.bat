@echo off
set T_FILENAME="Die Hard (U) [!].nes"
set SCRIPTNAME="diehardnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

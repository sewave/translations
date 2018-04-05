@echo off
set T_FILENAME="Art of Fighting (U) [!].gen"
set SCRIPTNAME="artfightingsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 1 FF "..\EngDict.txt"
pause

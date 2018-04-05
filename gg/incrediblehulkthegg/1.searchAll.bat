@echo off
set T_FILENAME="Incredible Hulk, The (U) [!].gg"
set SCRIPTNAME="incrediblehulkthegg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

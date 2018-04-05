@echo off
set T_FILENAME="Batman (U) [!].gen"
set SCRIPTNAME="batmanssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

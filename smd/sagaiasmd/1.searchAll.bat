@echo off
set T_FILENAME="Sagaia (U) [c][!].gen"
set SCRIPTNAME="sagaiasmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 0C "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Rolling Thunder 2 (U) [c][!].bin"
set SCRIPTNAME="rollingthunder2smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

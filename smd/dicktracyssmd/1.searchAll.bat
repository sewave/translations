@echo off
set T_FILENAME="Dick Tracy (W) [c][!].gen"
set SCRIPTNAME="dicktracyssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

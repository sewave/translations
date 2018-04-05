@echo off
set T_FILENAME="Mickey Mania (U) [!].smc"
set SCRIPTNAME="mickeymaniasnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 2 00 "..\EngDict.txt"
pause

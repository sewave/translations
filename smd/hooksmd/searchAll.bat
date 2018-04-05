@echo off 
set T_FILENAME="Hook (U) [c][!].bin"
set SCRIPTNAME="hooksmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

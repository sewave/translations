@echo off
set T_FILENAME="Journey From Darkness - Strider Returns (U) [c][!].bin"
set SCRIPTNAME="strider2smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 0 FF "..\EngDict.txt"
pause

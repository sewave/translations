@echo off
set T_FILENAME="G-LOC Air Battle (W) [c][!].bin"
set SCRIPTNAME="glocairbattlesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

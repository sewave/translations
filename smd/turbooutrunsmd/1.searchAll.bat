@echo off
set T_FILENAME="Turbo Outrun (JE) [c][!].gen"
set SCRIPTNAME="turbooutrunsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

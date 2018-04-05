@echo off
set T_FILENAME="Dahna - Megami Tanjou (J) [T+ENG].bin"
set SCRIPTNAME="dahna"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

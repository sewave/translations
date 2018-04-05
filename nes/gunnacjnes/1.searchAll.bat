@echo off
set T_FILENAME="Gun-Nac (J) [T+ENG].nes"
set SCRIPTNAME="gunnacjnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

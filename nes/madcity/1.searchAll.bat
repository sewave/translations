@echo off
set T_FILENAME="Mad City (J) [T+ENG].nes"
set SCRIPTNAME="madcity"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

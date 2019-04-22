@echo off
set T_FILENAME="Parodius da! (J) [T+ENG].nes"
set SCRIPTNAME="parodiusdanes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

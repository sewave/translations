@echo off
set T_FILENAME="Mission Cobra (Bunch) [!].nes"
set SCRIPTNAME="missioncobranes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

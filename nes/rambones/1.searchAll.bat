@echo off
set T_FILENAME="Rambo (U) (PRG1) [!].nes"
set SCRIPTNAME="rambones"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 2 FF "..\EngDict.txt"
pause

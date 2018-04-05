@echo off
set T_FILENAME="Twin Cobra (U) [!].nes"
set SCRIPTNAME="twincobranes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

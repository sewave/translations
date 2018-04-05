@echo off
set T_FILENAME="Gun-Nac (U) [!].nes"
set SCRIPTNAME="gunnacnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Sqoon (U) [!].nes"
set SCRIPTNAME="sqoonnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

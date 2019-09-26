@echo off
set T_FILENAME="Swamp Thing (U) [!].gb"
set SCRIPTNAME="swampthinggb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

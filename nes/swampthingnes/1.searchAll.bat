@echo off
set T_FILENAME="Swamp Thing (U) [!].nes"
set SCRIPTNAME="swampthingnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

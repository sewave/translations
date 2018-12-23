@echo off
set T_FILENAME="Predator (U) [!].nes"
set SCRIPTNAME="predatornes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

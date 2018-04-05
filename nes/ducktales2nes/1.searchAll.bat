@echo off
set T_FILENAME="Duck Tales 2 (U) [!].nes"
set SCRIPTNAME="ducktales2nes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

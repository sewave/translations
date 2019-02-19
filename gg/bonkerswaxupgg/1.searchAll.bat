@echo off
set T_FILENAME="Bonkers Wax Up! (U) [!].gg"
set SCRIPTNAME="bonkerswaxupgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

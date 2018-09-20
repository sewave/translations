@echo off
set T_FILENAME="Ghoul Patrol (U).smc"
set SCRIPTNAME="ghoulpatrolsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 8 FF "..\EngDict.txt"
pause

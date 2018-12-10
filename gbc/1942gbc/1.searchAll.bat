@echo off
set T_FILENAME="1942 (U) [C][!].gbc"
set SCRIPTNAME="1942gbc"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

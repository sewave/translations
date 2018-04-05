@echo off
set T_FILENAME="Strider Returns (U) [!].gg"
set SCRIPTNAME="strider2gg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

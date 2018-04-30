@echo off
set T_FILENAME="Megaman (U) [!].gg"
set SCRIPTNAME="megamangg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

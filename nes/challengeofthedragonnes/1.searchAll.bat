@echo off
set T_FILENAME="Challenge of the Dragon (Color Dreams) [!].nes"
set SCRIPTNAME="challengeofthedragonnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

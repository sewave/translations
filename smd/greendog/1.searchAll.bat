@echo off
set T_FILENAME="Greendog - The Beached Surfer Dude (UE) [!].bin"
set SCRIPTNAME="greendog"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

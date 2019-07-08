@echo off
set T_FILENAME="Fantasy Zone - The Maze (UE) [!].sms"
set SCRIPTNAME="fantasyzonethemazesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

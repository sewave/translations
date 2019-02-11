@echo off
set T_FILENAME="Rainbow Islands - The Story of Bubble Bobble 2 (J) [c][!].bin"
set SCRIPTNAME="rainbowislandsextra"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

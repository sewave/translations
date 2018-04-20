@echo off 
set T_FILENAME="Robocop versus The Terminator (U) [!].gg"
set SCRIPTNAME="rbcvstrmgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

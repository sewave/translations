@echo off 
set T_FILENAME="Robocop 3 (U) [!].gg"
set SCRIPTNAME="robocop3gg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

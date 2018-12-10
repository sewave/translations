@echo off 
set T_FILENAME="James Pond 3 - Operation Starfish (U) [!].gg"
set SCRIPTNAME="jamespond3gg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

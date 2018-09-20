@echo off 
set T_FILENAME="Mortal Kombat 3 (U) [!].gg"
set SCRIPTNAME="mk3gg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

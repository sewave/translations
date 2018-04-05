@echo off 
set T_FILENAME="Mortal Kombat (U) [!].gg"
set SCRIPTNAME="mk1gg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 FF "..\EngDict.txt"
pause 

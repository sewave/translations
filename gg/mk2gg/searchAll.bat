@echo off 
set T_FILENAME="Mortal Kombat II (U) [!].gg"
set SCRIPTNAME="mk2gg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

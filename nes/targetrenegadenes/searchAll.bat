@echo off 
set T_FILENAME="Target - Renegade (U) [!].nes"
set SCRIPTNAME="targetrenegadenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

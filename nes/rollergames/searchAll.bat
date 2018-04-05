@echo off 
set T_FILENAME="Rollergames (U) [!].nes"
set SCRIPTNAME="rollergames"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 6 FF "..\EngDict.txt"
pause 

@echo off 
set T_FILENAME="Beavis and Butt-head (U) [!].gg"
set SCRIPTNAME="beabutgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause 

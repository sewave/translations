@echo off 
set T_FILENAME="Beavis and Butt-head (U) [!].gb"
set SCRIPTNAME="beabutgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 02-03-04-05-06 "..\EngDict.txt"
pause 

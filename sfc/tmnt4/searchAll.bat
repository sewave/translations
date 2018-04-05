@echo off 
set T_FILENAME="Teenage Mutant Ninja Turtles IV - Turtles in Time (U) [!].smc"
set SCRIPTNAME="tmnt4"
java -jar Hextractor.jar -sa %SCRIPTNAME%Cutscenes.tbl %T_FILENAME% 5 00 "..\EngDict.txt"
pause 

@echo off 
set T_FILENAME="Toki - Going Ape Spit (UE) [c][!].bin"
set SCRIPTNAME="tokismd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause 

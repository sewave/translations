@echo off 
set T_FILENAME="Gaiares (JU) [!].gen"
set SCRIPTNAME="gaiares"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause 

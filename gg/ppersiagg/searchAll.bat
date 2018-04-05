@echo off 
set T_FILENAME="Prince of Persia (E) [S][!].gg"
set SCRIPTNAME="ppersiagg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

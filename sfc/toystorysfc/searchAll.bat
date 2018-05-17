@echo off 
set T_FILENAME="Toy Story (U) [!].smc"
set SCRIPTNAME="toystorysfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

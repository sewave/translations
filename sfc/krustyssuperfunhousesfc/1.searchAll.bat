@echo off
set T_FILENAME="Krusty's Super Fun House (U) (V1.1).smc"
set SCRIPTNAME="krustyssuperfunhousesfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

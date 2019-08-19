@echo off
set T_FILENAME="Krusty's Super Funhouse (UE) (REV01) [!].gen"
set SCRIPTNAME="krustyssuperfunhousesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

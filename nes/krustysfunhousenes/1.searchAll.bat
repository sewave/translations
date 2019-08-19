@echo off
set T_FILENAME="Krusty's Fun House (U) [!].nes"
set SCRIPTNAME="krustysfunhousenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

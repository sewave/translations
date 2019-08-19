@echo off
set T_FILENAME="Simpsons, The - Krusty's Fun House (U) [!].gg"
set SCRIPTNAME="simpsonsthekrustysfunhousegg"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

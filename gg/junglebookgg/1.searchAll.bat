@echo off
set T_FILENAME="Jungle Book, The (U) (Mar 1994) [!].gg"
set SCRIPTNAME="junglebookgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 2 00 "..\EngDict.txt"
pause

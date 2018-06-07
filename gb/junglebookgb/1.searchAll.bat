@echo off
set T_FILENAME="Jungle Book, The (U) [!].gb"
set SCRIPTNAME="junglebookgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

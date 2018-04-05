@echo off
set T_FILENAME="Jungle Book, The (U) [!].bin"
set SCRIPTNAME="junglebooksmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

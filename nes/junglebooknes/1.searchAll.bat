@echo off
set T_FILENAME="Jungle Book, The (U) [!].nes"
set SCRIPTNAME="junglebooknes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

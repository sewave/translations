@echo off
set T_FILENAME="New Zealand Story, The (E) [!].nes"
set SCRIPTNAME="newzealandstorythenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

@echo off
set T_FILENAME="New Zealand Story, The (Japan).pce"
set SCRIPTNAME="newzealandstorythepce"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

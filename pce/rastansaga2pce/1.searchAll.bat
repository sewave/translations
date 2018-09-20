@echo off
set T_FILENAME="Rastan Saga II (Japan).pce"
set SCRIPTNAME="rastansaga2pce"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause

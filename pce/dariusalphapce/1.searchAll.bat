@echo off
set T_FILENAME="Darius Alpha (J).pce"
set SCRIPTNAME="dariusalphapce"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

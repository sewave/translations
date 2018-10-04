@echo off
set T_FILENAME="OutRun (J).pce"
set SCRIPTNAME="outrunpce"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

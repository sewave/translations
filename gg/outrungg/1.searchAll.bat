@echo off
set T_FILENAME="OutRun (JU).gg"
set SCRIPTNAME="outrungg"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Gain Ground (UE) [c][!].gen"
set SCRIPTNAME="gaingroundsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

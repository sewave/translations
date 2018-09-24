@echo off
set T_FILENAME="OutRun (W) [!].gen"
set SCRIPTNAME="outrunsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

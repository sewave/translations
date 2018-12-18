@echo off
set T_FILENAME="OutRun 2019 (U) [!].gen"
set SCRIPTNAME="outrun2019smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

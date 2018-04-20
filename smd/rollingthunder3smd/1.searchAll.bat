@echo off
set T_FILENAME="Rolling Thunder 3 (U) [c][!].bin"
set SCRIPTNAME="rollingthunder3smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 1 80 "..\EngDict.txt"
pause

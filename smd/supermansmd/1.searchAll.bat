@echo off
set T_FILENAME="Superman (U) [!].gen"
set SCRIPTNAME="supermansmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

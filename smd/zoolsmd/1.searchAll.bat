@echo off
set T_FILENAME="Zool (U) [!].gen"
set SCRIPTNAME="zoolsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

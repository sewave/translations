@echo off
set T_FILENAME="Tinhead (U) [!].gen"
set SCRIPTNAME="tinheadssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

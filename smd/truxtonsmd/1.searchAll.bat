@echo off
set T_FILENAME="Truxton (W) [!].gen"
set SCRIPTNAME="truxtonsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
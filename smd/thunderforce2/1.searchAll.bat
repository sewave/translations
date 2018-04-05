@echo off
set T_FILENAME="Thunder Force II (U) [!].gen"
set SCRIPTNAME="thunderforce2"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Thunder Force III (JU) [!].gen"
set SCRIPTNAME="thunderforce3"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause

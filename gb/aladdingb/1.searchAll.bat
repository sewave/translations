@echo off
set T_FILENAME="Aladdin (U) [S][!].gb"
set SCRIPTNAME="aladdingb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

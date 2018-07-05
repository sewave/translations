@echo off
set T_FILENAME="Super Mario Land (W) (V1.1) [!].gb"
set SCRIPTNAME="supermariolandgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

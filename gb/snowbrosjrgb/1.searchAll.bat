@echo off
set T_FILENAME="Snow Bros. Jr. (U) [!].gb"
set SCRIPTNAME="snowbrosjrgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

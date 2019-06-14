@echo off
set T_FILENAME="Zool (U) [!].gb"
set SCRIPTNAME="zoolgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

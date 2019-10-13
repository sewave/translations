@echo off
set T_FILENAME="Rodland (U).gb"
set SCRIPTNAME="rodlandgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

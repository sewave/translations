@echo off
set T_FILENAME="Mortal Kombat 3 (U) [!].gb"
set SCRIPTNAME="mortalkombat3gb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

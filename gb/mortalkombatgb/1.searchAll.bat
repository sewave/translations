@echo off
set T_FILENAME="Mortal Kombat (U) [!].gb"
set SCRIPTNAME="mortalkombatgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

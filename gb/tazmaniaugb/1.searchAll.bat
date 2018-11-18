@echo off
set T_FILENAME="Taz-Mania (U) [!].gb"
set SCRIPTNAME="tazmaniaugb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

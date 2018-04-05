@echo off
set T_FILENAME="Duck Tales 2 (U) [!].gb"
set SCRIPTNAME="ducktales2gb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

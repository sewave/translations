@echo off
set T_FILENAME="Taz-Mania (E) [!].gb"
set SCRIPTNAME="tazmaniaegb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00-01 "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Lost World, The - Jurassic Park (U) [S][!].gb"
set SCRIPTNAME="lostworldthejurassicparkgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

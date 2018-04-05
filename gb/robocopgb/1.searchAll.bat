@echo off
set T_FILENAME="Robocop (U) (V1.0) [M][!].gb"
set SCRIPTNAME="robocopgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

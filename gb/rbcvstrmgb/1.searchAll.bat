@echo off
set T_FILENAME="RoboCop Vs. The Terminator (U) [!].gb"
set SCRIPTNAME="rbcvstrmgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

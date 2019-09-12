@echo off
set T_FILENAME="Run Saber (U) [!].smc"
set SCRIPTNAME="runsabersfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

@echo off
set T_FILENAME="3 Ninjas Kick Back (U).smc"
set SCRIPTNAME="3ninjaskickbacksnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause

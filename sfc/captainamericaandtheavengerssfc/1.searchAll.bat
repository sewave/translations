@echo off
set T_FILENAME="Captain America and The Avengers (U).smc"
set SCRIPTNAME="captainamericaandtheavengerssfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 8 FF "..\EngDict.txt"
pause

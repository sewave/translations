@echo off
set T_FILENAME="Captain America and the Avengers (U) [!].gb"
set SCRIPTNAME="captainamericaandtheavengersgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Captain Planet and The Planeteers (U) [!].nes"
set SCRIPTNAME="captainplanetandtheplaneteersnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

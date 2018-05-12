@echo off
set T_FILENAME="Captain Commando (E) [!].smc"
set SCRIPTNAME="captaincommandoeursfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

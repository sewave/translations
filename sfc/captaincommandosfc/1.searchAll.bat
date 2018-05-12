@echo off
set T_FILENAME="Captain Commando (U).smc"
set SCRIPTNAME="captaincommandosfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

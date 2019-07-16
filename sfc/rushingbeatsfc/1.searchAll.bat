@echo off
set T_FILENAME="Rushing Beat (J) [T+ENG].smc"
set SCRIPTNAME="rushingbeatsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

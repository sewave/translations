@echo off 
set T_FILENAME="Die Hard (Japan) [T+ENG].pce"
set SCRIPTNAME="diehardpce"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

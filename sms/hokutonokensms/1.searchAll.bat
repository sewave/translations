@echo off
set T_FILENAME="Hokuto no Ken (J) [T+ENG].sms"
set SCRIPTNAME="hokutonokensms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

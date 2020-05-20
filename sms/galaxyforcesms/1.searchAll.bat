@echo off
set T_FILENAME="Galaxy Force (U) [!].sms"
set SCRIPTNAME="galaxyforcesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

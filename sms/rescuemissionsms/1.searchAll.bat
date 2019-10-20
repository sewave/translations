@echo off
set T_FILENAME="Rescue Mission (UE) [!].sms"
set SCRIPTNAME="rescuemissionsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

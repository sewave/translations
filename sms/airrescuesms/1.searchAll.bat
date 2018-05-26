@echo off
set T_FILENAME="Air Rescue (E) [!].sms"
set SCRIPTNAME="airrescuesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

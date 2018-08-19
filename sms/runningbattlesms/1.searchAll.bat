@echo off
set T_FILENAME="Running Battle (E) [!].sms"
set SCRIPTNAME="runningbattlesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF-00 "..\EngDict.txt"
pause

@echo off
set T_FILENAME="OutRun Europa (E) [!].sms"
set SCRIPTNAME="outruneuropasms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

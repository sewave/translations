@echo off
set T_FILENAME="Heroes of the Lance (U) [!].sms"
set SCRIPTNAME="heroesofthelancesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

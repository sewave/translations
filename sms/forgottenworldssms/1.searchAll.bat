@echo off
set T_FILENAME="Forgotten Worlds (E) [!].sms"
set SCRIPTNAME="forgottenworldssms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

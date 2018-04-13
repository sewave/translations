@echo off
set T_FILENAME="Superman (E) [!].sms"
set SCRIPTNAME="supermansms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

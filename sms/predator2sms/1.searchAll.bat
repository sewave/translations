@echo off
set T_FILENAME="Predator 2 (E) [!].sms"
set SCRIPTNAME="predator2sms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

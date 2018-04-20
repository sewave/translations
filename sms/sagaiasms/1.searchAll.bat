@echo off
set T_FILENAME="Sagaia (E) [!].sms"
set SCRIPTNAME="sagaiasms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

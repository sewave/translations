@echo off
set T_FILENAME="Flash, The (E) [!].sms"
set SCRIPTNAME="flashthesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

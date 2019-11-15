@echo off
set T_FILENAME="Sensible Soccer (E) [!].sms"
set SCRIPTNAME="sensiblesoccersms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

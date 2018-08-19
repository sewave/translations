@echo off
set T_FILENAME="Shinobi (UE) [!].sms"
set SCRIPTNAME="shinobisms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

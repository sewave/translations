@echo off
set T_FILENAME="Impossible Mission (E) [!].sms"
set SCRIPTNAME="impossiblemissionsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Quartet (UE) [!].sms"
set SCRIPTNAME="quartetsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

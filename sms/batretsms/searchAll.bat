@echo off 
set T_FILENAME="Batman Returns (UE) [!].sms"
set SCRIPTNAME="batretsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

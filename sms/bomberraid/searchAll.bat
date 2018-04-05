@echo off 
set T_FILENAME="Bomber Raid (UE) [!].sms"
set SCRIPTNAME="bomberraid"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

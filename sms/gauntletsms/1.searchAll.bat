@echo off
set T_FILENAME="Gauntlet (UE) [!].sms"
set SCRIPTNAME="gauntletsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

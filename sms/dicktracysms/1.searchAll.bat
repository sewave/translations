@echo off
set T_FILENAME="Dick Tracy (UE) [!].sms"
set SCRIPTNAME="dicktracysms"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

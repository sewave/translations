@echo off
set T_FILENAME="Cloud Master (UE) [!].sms"
set SCRIPTNAME="cloudmastersms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

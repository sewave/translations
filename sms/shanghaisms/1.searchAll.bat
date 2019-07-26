@echo off
set T_FILENAME="Shanghai (UE) [!].sms"
set SCRIPTNAME="shanghaisms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

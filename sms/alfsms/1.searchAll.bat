@echo off
set T_FILENAME="ALF (U) [!].sms"
set SCRIPTNAME="alfsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

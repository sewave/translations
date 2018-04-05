@echo off
set T_FILENAME="Home Alone (U) [!].sms"
set SCRIPTNAME="homealonesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 8 00 "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Altered Beast (UE) [!].sms"
set SCRIPTNAME="alteredbeastsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

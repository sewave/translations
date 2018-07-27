@echo off
set T_FILENAME="Gain Ground (UE) [!].sms"
set SCRIPTNAME="gaingroundsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

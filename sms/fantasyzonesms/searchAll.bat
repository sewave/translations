@echo off 
set T_FILENAME="Fantasy Zone (UE) [!].sms"
set SCRIPTNAME="fantasyzonesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

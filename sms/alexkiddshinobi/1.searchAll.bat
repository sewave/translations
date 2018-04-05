@echo off
set T_FILENAME="Alex Kidd in Shinobi World (UE) [!].sms"
set SCRIPTNAME="alexkiddshinobi"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Jurassic Park (E) [!].sms"
set SCRIPTNAME="jurassicparksms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

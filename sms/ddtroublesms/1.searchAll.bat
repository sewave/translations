@echo off
set T_FILENAME="Deep Duck Trouble (E) [!].sms"
set SCRIPTNAME="ddtroublesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

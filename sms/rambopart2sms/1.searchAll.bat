@echo off
set T_FILENAME="Rambo - First Blood Part 2 (U) [!].sms"
set SCRIPTNAME="rambopart2sms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

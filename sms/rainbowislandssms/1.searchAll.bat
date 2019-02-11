@echo off
set T_FILENAME="Rainbow Islands (E) [!].sms"
set SCRIPTNAME="rainbowislandssms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

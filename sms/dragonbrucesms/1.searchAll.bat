@echo off
set T_FILENAME="Dragon - The Bruce Lee Story (E) [!].sms"
set SCRIPTNAME="dragonbrucesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

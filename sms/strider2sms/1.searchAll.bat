@echo off
set T_FILENAME="Strider II (UE) [!].sms"
set SCRIPTNAME="strider2sms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 FF "..\EngDict.txt"
pause

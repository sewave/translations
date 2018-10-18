@echo off
set T_FILENAME="Ecco the Dolphin (UE).sms"
set SCRIPTNAME="eccosms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 8 00 "..\EngDict.txt"
pause

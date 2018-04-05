@echo off
set T_FILENAME="Strider (UE) [!].sms"
set SCRIPTNAME="stridersms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

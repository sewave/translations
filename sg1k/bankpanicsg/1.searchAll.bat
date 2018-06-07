@echo off
set T_FILENAME="Bank Panic (SG-1000) [!].sg"
set SCRIPTNAME="bankpanicsg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

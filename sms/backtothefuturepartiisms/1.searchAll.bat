@echo off
set T_FILENAME="Back to the Future Part II (UE) [!].sms"
set SCRIPTNAME="backtothefuturepartiisms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 0D "..\EngDict.txt"
pause

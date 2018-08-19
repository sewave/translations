@echo off
set T_FILENAME="Back to the Future Part III (UE) [!].sms"
set SCRIPTNAME="backtothefuturepartiiisms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

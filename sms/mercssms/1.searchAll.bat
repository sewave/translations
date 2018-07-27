@echo off
set T_FILENAME="Mercs (E) [!].sms"
set SCRIPTNAME="mercssms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

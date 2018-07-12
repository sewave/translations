@echo off
set T_FILENAME="Streets of Rage 2 (E) [!].sms"
set SCRIPTNAME="sor2sms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

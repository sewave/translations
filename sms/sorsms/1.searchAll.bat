@echo off
set T_FILENAME="Streets of Rage (E) [a1].sms"
set SCRIPTNAME="sorsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

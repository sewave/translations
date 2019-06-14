@echo off
set T_FILENAME="Super Space Invaders (E) [!].sms"
set SCRIPTNAME="superspaceinvaderssms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 5 00 "..\EngDict.txt"
pause

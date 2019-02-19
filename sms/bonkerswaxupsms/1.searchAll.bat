@echo off
set T_FILENAME="Bonkers Wax Up! (UE) [!].sms"
set SCRIPTNAME="bonkerswaxupsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

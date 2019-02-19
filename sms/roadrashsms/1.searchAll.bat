@echo off
set T_FILENAME="Road Rash (E) [!].sms"
set SCRIPTNAME="roadrashsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

@echo off
set T_FILENAME="Shadow of the Beast (E) [!].sms"
set SCRIPTNAME="shadowofthebeastsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

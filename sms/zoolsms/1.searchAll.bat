@echo off
set T_FILENAME="Zool (E) [!].sms"
set SCRIPTNAME="zoolsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

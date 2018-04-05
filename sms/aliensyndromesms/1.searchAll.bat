@echo off
set T_FILENAME="Alien Syndrome (UE) [!].sms"
set SCRIPTNAME="aliensyndromesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

@echo off 
set T_FILENAME="Masters of Combat (E) [!].sms"
set SCRIPTNAME="mastcom"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

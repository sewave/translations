@echo off 
set T_FILENAME="Mortal Kombat (E) [!].sms"
set SCRIPTNAME="mk1sms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

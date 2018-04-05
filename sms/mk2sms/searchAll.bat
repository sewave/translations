@echo off 
set T_FILENAME="Mortal Kombat 2 (E) [!].sms"
set SCRIPTNAME="mk2sms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

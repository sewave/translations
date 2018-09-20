@echo off 
set T_FILENAME="Mortal Kombat 3 (E) [!].sms"
set SCRIPTNAME="mk3sms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FE "..\EngDict.txt"
pause 

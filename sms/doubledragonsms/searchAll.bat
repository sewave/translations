@echo off 
set T_FILENAME="Double Dragon (UE) [!].sms"
set SCRIPTNAME="doubledragonsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

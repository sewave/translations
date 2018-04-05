@echo off 
set T_FILENAME="Vigilante (UE) [!].sms"
set SCRIPTNAME="vigilantesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

@echo off 
set T_FILENAME="Double Hawk (E) [!].sms"
set SCRIPTNAME="dhawksms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

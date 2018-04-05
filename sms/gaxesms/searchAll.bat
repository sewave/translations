@echo off 
set T_FILENAME="Golden Axe (UE) [!].sms"
set SCRIPTNAME="gaxesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

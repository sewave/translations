@echo off 
set T_FILENAME="R.C. Grand Prix (UE) [!].sms"
set SCRIPTNAME="rcgrandprix"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

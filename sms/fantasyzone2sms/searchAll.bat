@echo off 
set T_FILENAME="Fantasy Zone II - The Tears of Opa-Opa (UE) [!].sms"
set SCRIPTNAME="fantasyzone2sms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

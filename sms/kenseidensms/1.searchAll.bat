@echo off
set T_FILENAME="Kenseiden (UE) [!].sms"
set SCRIPTNAME="kenseidensms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

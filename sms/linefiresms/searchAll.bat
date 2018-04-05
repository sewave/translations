@echo off 
set T_FILENAME="Line of Fire (E) [!].sms"
set SCRIPTNAME="linefiresms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause 

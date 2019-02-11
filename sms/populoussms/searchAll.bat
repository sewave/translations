@echo off 
set T_FILENAME="Populous (E) [!].sms"
set SCRIPTNAME="populoussms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

@echo off 
set T_FILENAME="Robocop 3 (E) [!].sms"
set SCRIPTNAME="robocop3sms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

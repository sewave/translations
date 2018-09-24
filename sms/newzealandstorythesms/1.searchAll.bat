@echo off
set T_FILENAME="New Zealand Story, The (E) [!].sms"
set SCRIPTNAME="newzealandstorythesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

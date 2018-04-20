@echo off 
set T_FILENAME="Robocop versus The Terminator (UE) [!].sms"
set SCRIPTNAME="rbcvstrmsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

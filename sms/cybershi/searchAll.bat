@echo off 
set T_FILENAME="Cyber Shinobi (UE) [!].sms"
set SCRIPTNAME="cybershi"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\..\3.progress\EngDict.txt"
pause 

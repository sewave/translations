@echo off 
set T_FILENAME="Cyber Shinobi (UE) [!].sms"
set SCRIPTNAME="cybershi"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt %SCRIPTNAME%.off
pause 

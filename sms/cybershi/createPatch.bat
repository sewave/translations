@echo off 
set T_FILENAME="TR_Cyber Shinobi (UE) [!].sms"
set S_FILENAME="Cyber Shinobi (UE) [!].sms"
set SCRIPTNAME="cybershi"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 

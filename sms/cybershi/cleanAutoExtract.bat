@echo off 
set T_FILENAME="Cyber Shinobi (UE) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 

@echo off 
set T_FILENAME="Robocop versus The Terminator (UE) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 

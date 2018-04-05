@echo off 
set T_FILENAME="Hang-On (E) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
pause 

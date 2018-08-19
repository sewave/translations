@echo off 
set T_FILENAME="Fantasy Zone II - The Tears of Opa-Opa (UE) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 

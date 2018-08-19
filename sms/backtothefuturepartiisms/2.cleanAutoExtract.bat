@echo off
set T_FILENAME="Back to the Future Part II (UE) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="Galaxy Force (U) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

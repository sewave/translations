@echo off
set T_FILENAME="Impossible Mission (E) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

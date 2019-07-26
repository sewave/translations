@echo off
set T_FILENAME="Heroes of the Lance (U) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

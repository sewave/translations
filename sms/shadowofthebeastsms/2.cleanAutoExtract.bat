@echo off
set T_FILENAME="Shadow of the Beast (E) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

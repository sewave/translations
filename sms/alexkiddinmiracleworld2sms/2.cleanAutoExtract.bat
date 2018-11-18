@echo off
set T_FILENAME="Alex Kidd in Miracle World 2.sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

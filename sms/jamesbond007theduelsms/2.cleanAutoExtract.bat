@echo off
set T_FILENAME="James Bond 007 - The Duel (E).sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="Streets of Rage (E) [a1].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

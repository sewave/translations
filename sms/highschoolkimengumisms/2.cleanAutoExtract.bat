@echo off
set T_FILENAME="High School! Kimengumi (J) [T+ENG].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

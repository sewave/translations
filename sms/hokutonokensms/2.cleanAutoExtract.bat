@echo off
set T_FILENAME="Hokuto no Ken (J) [T+ENG].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

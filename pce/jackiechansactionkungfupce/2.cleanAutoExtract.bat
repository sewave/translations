@echo off
set T_FILENAME="Jackie Chan's Action Kung Fu (U).pce"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

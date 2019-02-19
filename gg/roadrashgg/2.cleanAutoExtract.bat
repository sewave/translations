@echo off
set T_FILENAME="Road Rash (U).gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

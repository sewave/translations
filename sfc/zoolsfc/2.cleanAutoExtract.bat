@echo off
set T_FILENAME="Zool (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="3 Ninjas Kick Back (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="Captain America and The Avengers (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

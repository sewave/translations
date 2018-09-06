@echo off
set T_FILENAME="Dragon - The Bruce Lee Story (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="Double Dragon V - The Shadow Falls (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

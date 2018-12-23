@echo off
set T_FILENAME="Darius Force (J).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

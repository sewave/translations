@echo off
set T_FILENAME="Alien vs. Predator (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

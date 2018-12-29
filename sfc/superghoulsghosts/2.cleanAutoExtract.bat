@echo off
set T_FILENAME="Super Ghouls 'N Ghosts (U) [!].smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

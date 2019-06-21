@echo off
set T_FILENAME="T2 - The Arcade Game (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

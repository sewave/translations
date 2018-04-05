@echo off
set T_FILENAME="Beauty and the Beast (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

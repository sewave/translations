@echo off
set T_FILENAME="Spider-Man & Venom - Separation Anxiety (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

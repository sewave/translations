@echo off
set T_FILENAME="Prince of Persia 2 - The Shadow & The Flame (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

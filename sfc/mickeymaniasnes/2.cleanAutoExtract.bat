@echo off
set T_FILENAME="Mickey Mania (U) [!].smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

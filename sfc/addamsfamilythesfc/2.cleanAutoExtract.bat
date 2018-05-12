@echo off
set T_FILENAME="Addams Family, The (U) [!].smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

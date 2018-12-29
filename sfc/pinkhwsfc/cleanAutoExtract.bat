@echo off 
set T_FILENAME="Pink Panther in Pink Goes to Hollywood (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 

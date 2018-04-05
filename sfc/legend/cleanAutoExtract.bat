@echo off 
set T_FILENAME="Legend (U) (718).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 

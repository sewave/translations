@echo off 
set T_FILENAME="Hook (U) (29252).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 

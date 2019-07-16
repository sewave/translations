@echo off
set T_FILENAME="Rushing Beat (J) [T+ENG].smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

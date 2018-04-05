@echo off
set T_FILENAME="ActRaiser (J) [T+ENG].smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

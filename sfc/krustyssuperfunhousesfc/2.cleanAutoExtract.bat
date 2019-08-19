@echo off
set T_FILENAME="Krusty's Super Fun House (U) (V1.1).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="CM.EXE"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

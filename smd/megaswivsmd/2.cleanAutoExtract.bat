@echo off
set T_FILENAME="Mega SWIV (E).bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

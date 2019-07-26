@echo off
set T_FILENAME="Prince of Persia (E).bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

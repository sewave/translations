@echo off
set T_FILENAME="Prince of Persia (U).gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="Hook (U).gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

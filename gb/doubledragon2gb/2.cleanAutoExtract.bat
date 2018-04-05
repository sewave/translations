@echo off
set T_FILENAME="Double Dragon 2 (U) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

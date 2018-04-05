@echo off
set T_FILENAME="Captain America and the Avengers (U) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

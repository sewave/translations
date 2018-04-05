@echo off
set T_FILENAME="Captain America and the Avengers (U) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="Super James Pond (E) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

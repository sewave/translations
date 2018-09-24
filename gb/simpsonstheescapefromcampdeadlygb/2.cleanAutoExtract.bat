@echo off
set T_FILENAME="Simpsons, The - Escape from Camp Deadly (U) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

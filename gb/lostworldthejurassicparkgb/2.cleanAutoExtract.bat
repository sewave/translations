@echo off
set T_FILENAME="Lost World, The - Jurassic Park (U) [S][!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

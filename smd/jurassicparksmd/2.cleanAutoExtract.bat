@echo off
set T_FILENAME="Jurassic Park (U) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

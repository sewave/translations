@echo off
set T_FILENAME="Great Circus Mystery, The - Starring Mickey & Minnie (U) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

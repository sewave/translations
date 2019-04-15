@echo off
set T_FILENAME="Spider-Man and Venom - Separation Anxiety (U) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="Amazing Spider-Man 3, The - Invasion of the Spider-Slayers (U) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

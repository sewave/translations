@echo off
set T_FILENAME="Alien vs Predator - The Last of His Clan (U) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

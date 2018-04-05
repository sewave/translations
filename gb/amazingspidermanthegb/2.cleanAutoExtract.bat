@echo off
set T_FILENAME="Amazing Spider-Man, The (UE) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

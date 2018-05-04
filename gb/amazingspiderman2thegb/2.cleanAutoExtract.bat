@echo off
set T_FILENAME="Amazing Spider-Man 2, The (UE) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

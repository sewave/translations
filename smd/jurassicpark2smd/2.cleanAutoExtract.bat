@echo off
set T_FILENAME="Jurassic Park 2 - The Lost World (U) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="Jurassic Park (UE) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

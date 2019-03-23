@echo off
set T_FILENAME="Challenge of the Dragon (Color Dreams) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="Fantasy Zone (Tengen) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

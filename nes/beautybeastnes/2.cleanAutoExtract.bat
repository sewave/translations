@echo off
set T_FILENAME="Beauty and the Beast (E) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

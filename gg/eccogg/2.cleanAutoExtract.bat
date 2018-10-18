@echo off
set T_FILENAME="Ecco the Dolphin (U) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

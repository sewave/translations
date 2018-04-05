@echo off
set T_FILENAME="Megaman3Improvement (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

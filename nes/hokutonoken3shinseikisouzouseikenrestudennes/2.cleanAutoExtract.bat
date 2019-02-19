@echo off
set T_FILENAME="Hokuto no Ken 3 - Shin Seiki Souzou Seiken Restuden (J) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

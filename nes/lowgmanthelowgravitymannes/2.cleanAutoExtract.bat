@echo off
set T_FILENAME="Low G Man - The Low Gravity Man (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

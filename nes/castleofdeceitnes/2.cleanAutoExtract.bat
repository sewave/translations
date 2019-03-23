@echo off
set T_FILENAME="Castle of Deceit (Bunch) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

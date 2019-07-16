@echo off
set T_FILENAME="Galactic Crusader (Bunch) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

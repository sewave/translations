@echo off
set T_FILENAME="Arkanoid II (J) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

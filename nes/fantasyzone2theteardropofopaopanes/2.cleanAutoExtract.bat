@echo off
set T_FILENAME="Fantasy Zone 2 - The Teardrop of Opa-Opa (J) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

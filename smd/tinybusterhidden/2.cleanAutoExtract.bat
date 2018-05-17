@echo off
set T_FILENAME="Tiny Toon Adventures - Buster's Hidden Treasure (U) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

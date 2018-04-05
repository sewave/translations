@echo off
set T_FILENAME="Ghosts 'N Goblins (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

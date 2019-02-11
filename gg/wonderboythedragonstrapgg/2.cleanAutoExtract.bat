@echo off
set T_FILENAME="Wonder Boy - The Dragon's Trap (E) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

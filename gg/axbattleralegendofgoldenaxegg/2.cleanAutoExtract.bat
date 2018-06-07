@echo off
set T_FILENAME="Ax Battler - A Legend of Golden Axe (U) (V2.4) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

@echo off
set T_FILENAME="Incredible Hulk, The (U) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

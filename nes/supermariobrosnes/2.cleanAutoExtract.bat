@echo off
set T_FILENAME="Super Mario Bros. (W) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

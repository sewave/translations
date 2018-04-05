@echo off
set T_FILENAME="Super Spike V'Ball (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause

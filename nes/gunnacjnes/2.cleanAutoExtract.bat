@echo off
set T_FILENAME="Gun-Nac (J) [T+ENG].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
